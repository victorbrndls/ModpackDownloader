package harystolho.mpd;

public class DownloadThread implements Runnable {

	private MpdGUI mpd;

	public DownloadThread(MpdGUI gui) {
		this.mpd = gui;
	}

	@Override
	public void run() {
		try {
			Thread.sleep(2000);

		} catch (InterruptedException e) {
			e.printStackTrace();
		}

	}

}
