package harystolho.mpd;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Main {

	public static ExecutorService ex;

	public static void main(String... args) {

		ex = Executors.newFixedThreadPool(5);

		MainApp gui = new MainApp();

		gui.loadGUI(args);

	}

}
