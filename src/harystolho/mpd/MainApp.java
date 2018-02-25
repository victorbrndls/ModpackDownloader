package harystolho.mpd;

import java.io.IOException;
import java.util.ResourceBundle;

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

		loadLayout();

		stage.show();
	}

	public static void main(String[] args) {
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

		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}
