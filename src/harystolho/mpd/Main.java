package harystolho.mpd;

public class Main {

	public static void main(String[] args) throws InterruptedException {

		MpdGUI gui = new MpdGUI();

		Thread thread = new Thread(new DownloadThread(gui));

		thread.start();
		gui.startGUI(args);
	}

}
