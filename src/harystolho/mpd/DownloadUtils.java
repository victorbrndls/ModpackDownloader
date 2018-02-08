package harystolho.mpd;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import javax.naming.directory.DirContext;
import javax.net.ssl.HttpsURLConnection;

import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.HttpStatusException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class DownloadUtils {

	private static Thread downloadThread;
	private static String modpackDownloadURL;

	public static void displayInstructions() {
		MpdGUI.getGui().addMessage(
				"1 - Put the URL in the box (has to be a curseforge project url, 'https://minecraft.curseforge.com/projects/modpackname')");
		MpdGUI.getGui().addMessage("2 - Click on the 'get Info' button and wait");
		MpdGUI.getGui()
				.addMessage("3 - Click on the 'download' button (download folder: /currentFolder/modpackname)");
		MpdGUI.getGui().addMessage("");
	}

	public static void downloadModpack(String url) {
		File downloadDir = new File(url.split("projects/")[1]);
		if (!downloadDir.exists()) {
			System.out.println(downloadDir.getAbsolutePath());
			downloadDir.mkdir();

		}
		downloadThread = new Thread(new Runnable() {

			@Override
			public void run() {
				try {

					if (modpackDownloadURL == null) {
						MpdGUI.getGui().addMessage("Click the 'getInfo' button first");
						return;
					}

					// Download the modpack configs
					HttpsURLConnection conn = (HttpsURLConnection) new URL(
							"https://minecraft.curseforge.com" + modpackDownloadURL + "/download").openConnection();

					MpdGUI.getGui().addMessage("Starting download: " + modpackDownloadURL.split("/")[2].toUpperCase());

					Path p = Paths.get(downloadDir.getPath() + "/" + MpdGUI.modpackID + ".zip");

					try (InputStream in = conn.getInputStream()) {
						Files.copy(in, p, StandardCopyOption.REPLACE_EXISTING);
					}

					// Unzip the configs
					ZipInputStream zis = new ZipInputStream(new FileInputStream(p.toFile()));

					ZipEntry ze = zis.getNextEntry();

					byte[] b = new byte[1024];

					MpdGUI.getGui().addMessage("Unziping configs");
					while (ze != null) {
						String fileName = ze.getName();
						File newFile = new File(downloadDir.getPath() + "/" + fileName);

						// create parent folder if it doesn't exist
						new File(newFile.getParent()).mkdir();

						if (!ze.isDirectory()) {
							newFile.createNewFile();
						}

						// if it's a file create it, if it it's a folder skip
						if (newFile.isFile()) {
							FileOutputStream fos = new FileOutputStream(newFile);
							int len;

							while ((len = zis.read(b)) > 0) {
								fos.write(b, 0, len);
							}

							fos.close();
						}

						ze = zis.getNextEntry();
					}

					zis.closeEntry();
					zis.close();

					Files.deleteIfExists(p);

					// Downloading all the mods
					MpdGUI.getGui().addMessage("Getting mod list");

					// make sure there is a mods folder
					File modsFolder = new File(downloadDir + "/overrides/mods");
					if (!modsFolder.exists()) {
						modsFolder.mkdir();
					}

					StringBuilder sb = new StringBuilder();
					try {
						for (String s : Files.readAllLines(Paths.get(downloadDir.getPath() + "/manifest.json"))) {
							sb.append(s);
						}
					} catch (IOException e) {
						e.printStackTrace();
					}

					JSONObject js = new JSONObject(sb.toString());

					JSONArray modList = new JSONArray(js.get("files").toString());

					List<Future<Boolean>> result = new ArrayList<>();

					MpdGUI.getGui().addMessage("Downloading mods...");

					for (int x = 0; x < modList.length(); x++) {
						JSONObject json = new JSONObject(modList.get(x).toString());
						result.add(downloadMod(json, x, modList.length(), downloadDir.toPath()));
					}
					int count = 0;
					for (Future<Boolean> f : result) {
						try {
							if (f.get()) {
								count++;
							}
						} catch (InterruptedException e) {
							e.printStackTrace();
						} catch (ExecutionException e) {
							e.printStackTrace();
						}
					}

					MpdGUI.getGui().addMessage("\nDownloaded " + count + " out of " + modList.length() + " Mods");

					JSONObject forgeID = new JSONObject(
							new JSONArray(new JSONObject(js.get("minecraft").toString()).get("modLoaders").toString())
									.get(0).toString());
					MpdGUI.getGui().addMessage("Forge version: " + forgeID.get("id"));

					MpdGUI.getGui().addMessage("Finished download");

					MpdGUI.getGui().addMessage("");

				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		});

		downloadThread.start();
	}

	public static Future<Boolean> downloadMod(JSONObject json, int number, int total, Path dir) {
		return Main.ex.submit(new Callable<Boolean>() {
			@Override
			public Boolean call() throws Exception {
				String url = "https://minecraft.curseforge.com/projects/" + json.get("projectID") + "/files/"
						+ json.get("fileID");
				MpdGUI.getGui().addMessage("\nDownloading " + (number + 1) + "/" + total + "\n" + url);
				HttpsURLConnection conn = (HttpsURLConnection) new URL(url + "/download").openConnection();
				System.out.println(conn.getURL());

				try (InputStream is = conn.getInputStream()) {
					Files.copy(is, Paths.get(dir + "/overrides/mods/" + json.get("projectID") + ".jar"),
							StandardCopyOption.REPLACE_EXISTING);
				} catch (NoSuchFileException exc) {
					MpdGUI.getGui().addMessage("Couldn't downloader mod " + json.get("projectID"));
				} catch (IOException ecx) {
					MpdGUI.getGui().addMessage(ecx.getMessage());
				}
				return true;
			}
		});
	}

	public static void getInfo(String url) {

		MpdGUI.getGui().addMessage("Modpack url: " + url);

		try {

			Future<Document> futureName = Main.ex.submit(new Callable<Document>() {
				@Override
				public Document call() throws Exception {
					return Jsoup.connect(url).get();
				}
			});

			Future<Document> futureVersion = Main.ex.submit(new Callable<Document>() {
				@Override
				public Document call() throws Exception {
					return Jsoup.connect(url + "/files").get();
				}
			});

			Future<Integer> futureModNum = Main.ex.submit(new Callable<Integer>() {
				@Override
				public Integer call() throws Exception {
					return getModpackMods(url);
				}
			});

			String modpackName = futureName.get().select("span.overflow-tip").html();
			if (modpackName.length() == 0) {
				MpdGUI.getGui().addMessage("Invalid modpack name");
				return;
			}

			modpackDownloadURL = futureName.get().select(
					"ul.cf-recentfiles:nth-child(2) > li:nth-child(1) > div:nth-child(2) > div:nth-child(1) > a:nth-child(1)")
					.attr("href");

			int mods = futureModNum.get();

			String version = futureVersion.get()
					.select("tr.project-file-list-item:nth-child(1) > td:nth-child(5) > span:nth-child(1)").text();

			MpdGUI.modpackID = futureVersion.get().select(
					"tr.project-file-list-item:nth-child(1) > td:nth-child(2) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1)")
					.get(0).attr("href").split("files/")[1];

			MpdGUI.getGui().setInfo(modpackName, mods, version);
		} catch (IllegalArgumentException e) {
			MpdGUI.getGui().addMessage("Must supply a valid URL");
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			MpdGUI.getGui().addMessage("Invalid url");
		}

	}

	public static int getModpackMods(String url) {
		try {
			Document doc = Jsoup.connect(url + "/relations/dependencies?page=1").get();
			int size = doc.select("div.b-pagination:nth-child(2) > ul:nth-child(1)").get(0).children().size();
			int modNumber = Integer.parseInt(doc.select("div.b-pagination:nth-child(2) > ul:nth-child(1)").get(0)
					.child(size - 2).outerHtml().split("page=")[1].split("\"")[0], 10);

			Document doc2 = Jsoup.connect(url + "/relations/dependencies?page=" + modNumber).get();
			int plusMods = doc2.select(".listing").get(0).children().size();

			modNumber = (modNumber - 1) * 20 + plusMods;
			return modNumber;
		} catch (HttpStatusException e) {
			return 0;
		} catch (IOException e) {
			e.printStackTrace();
		} catch (IndexOutOfBoundsException e) {
			return 0;
		}
		return 0;
	}

}
