package harystolho.mpd;

import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class MpdGUI extends Application {

	private Stage window;
	private BorderPane pane;

	private final int HEIGHT = 600;
	private final int WIDTH = 900;

	@Override
	public void start(Stage window) throws Exception {
		this.window = window;
		window.setTitle("Modpack Downloader");
		window.setHeight(HEIGHT);
		window.setWidth(WIDTH);

		loadPanes();

		Scene scene = new Scene(pane);

		window.setScene(scene);
		window.show();
	}

	public void startGUI(String[] args) {
		launch(args);
	}

	private void loadPanes() {
		pane = new BorderPane();
		pane.setPadding(new Insets(5));

		VBox topBox = new VBox();
		TextField modpackUrl = new TextField();
		modpackUrl.setMaxWidth(WIDTH * 0.8);

		HBox modpackInfo = new HBox();
		Label modpackName = new Label("Name:");
		Label modpackModNumber = new Label("Mods: ");
		Label modpackVersion = new Label("Version: ");

		modpackInfo.getChildren().addAll(modpackName, modpackModNumber, modpackVersion);

		VBox rightBox = new VBox();
		Button infoButton = new Button("Get Info");
		
		topBox.getChildren().addAll(modpackUrl, modpackInfo);

		pane.setTop(topBox);

	}

}
