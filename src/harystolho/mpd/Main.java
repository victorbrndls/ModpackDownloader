package harystolho.mpd;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Main {

	public static ExecutorService ex;

	public static void main(String[] args) throws InterruptedException {

		ex = Executors.newFixedThreadPool(5);

		MpdGUI gui = new MpdGUI();

		Thread thread = new Thread(new DownloadThread(gui));
		thread.start();

		gui.startGUI(args);
	}

}
