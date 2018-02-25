package harystolho.mpd;

import java.io.IOException;
import java.util.ResourceBundle;

import harystolho.mpd.controller.MainController;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class MainApp extends Application {

	private Stage stage;

	@Override
	public void start(Stage primaryStage) {
		this.stage = primaryStage;
		primaryStage.setTitle("ModpackDownloader");
		primaryStage.setResizable(false);

		Scene scene = loadLayout();

		stage.setScene(scene);
		stage.show();
	}

	public void loadGUI(String[] args) {
		launch(args);
	}

	public Scene loadLayout() {
		try {
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(MainApp.class.getResource("view/MpdFXML.fxml"));
			loader.setResources(ResourceBundle.getBundle("harystolho.lang." + Main.configs.getProperty("lang")));

			VBox box = loader.load();
			Scene scene = new Scene(box);

			MainController controller = loader.getController();
			controller.setMainApp(this);
			controller.setFXMLLoader(loader);

			return scene;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;

	}

	public Stage getStage() {
		return this.stage;
	}
}