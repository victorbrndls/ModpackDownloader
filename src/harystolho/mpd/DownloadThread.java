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
			if(modpackName.length() == 0) {
				mpd.gui.addMessage("Invalid modpack name");
				return;
			} 
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			mpd.gui.addMessage("Must supply a valid URL");
		}

	}

}
