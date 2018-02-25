package harystolho.mpd;

import java.io.IOException;
import java.util.ResourceBundle;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import harystolho.mpd.controller.MainController;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class MainApp extends Application {

	private Stage stage;
	private DownloadUtils utils;

	@Override
	public void start(Stage primaryStage) {
		this.stage = primaryStage;
		primaryStage.setTitle("ModpackDownloader");
		primaryStage.setResizable(false);

		loadLayout();

		stage.show();
	}

	public void loadGUI(String[] args) {
		launch(args);
	}

	private void loadLayout() {
		try {
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(MainApp.class.getResource("view/MpdFXML.fxml"));
			loader.setResources(ResourceBundle.getBundle("harystolho.lang.en"));

			VBox box = loader.load();
			Scene scene = new Scene(box);
			stage.setScene(scene);

			MainController controller = loader.getController();
			controller.setMainApp(this);
			controller.setFXMLLoader(loader);

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public Stage getStage() {
		return this.stage;
	}
}
