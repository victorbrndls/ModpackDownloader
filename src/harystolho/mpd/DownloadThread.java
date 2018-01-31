package harystolho.mpd;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class DownloadThread implements Runnable {

	private static MpdGUI mpd;

	public DownloadThread(MpdGUI gui) {
		this.mpd = gui;
	}

	@Override
	public void run() {
		try {
			Thread.sleep(2000);
			mpd.gui.addMessage(
					"1 - put the URL in the box (has to be a curseforge project url, 'https://minecraft.curseforge.com/projects/modpackname') ");
			mpd.gui.addMessage("2 - click the 'get Info' button and wait");
			mpd.gui.addMessage("3 - then click on the 'download' button (download folder: /currentFolder/modpackname)");
			mpd.gui.addMessage("");
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

	}

	public static void download(String url) {

	}

	public static void getInfo(String url) {
		mpd.gui.addMessage("Modpack url: " + url);

		try {
			Document doc = Jsoup.connect(url).get();
			String modpackName = doc.select("span.overflow-tip").html();
			if (modpackName.length() == 0) {
				mpd.gui.addMessage("Invalid modpack name");
				return;
			}

			int mods = getModpackMods(url);

			mpd.gui.setInfo(modpackName, mods, "1.12.2");
		} catch (IOException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			mpd.gui.addMessage("Must supply a valid URL");
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
			
			System.out.println(plusMods);
			
			modNumber = (modNumber - 1) * 20 + plusMods;
			return modNumber;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
