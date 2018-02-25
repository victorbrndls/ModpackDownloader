package harystolho.mpd;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Main {

	public static ExecutorService ex;
	public static Properties configs;

	public static void main(String... args) {

		ex = Executors.newFixedThreadPool(5);

		loadConfigs();

		MainApp gui = new MainApp();

		gui.loadGUI(args);

	}

	private static void loadConfigs() {
		configs = new Properties();
		try {
			configs.load(new FileInputStream(new File("src/harystolho/configs")));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void saveConfigs() {
		try {
			Main.configs.store(new FileOutputStream(new File("src/harystolho/configs")), "");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
