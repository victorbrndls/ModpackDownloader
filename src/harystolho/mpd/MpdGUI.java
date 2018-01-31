package harystolho.mpd;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class MpdGUI extends Application {

	private Stage window;
	private BorderPane pane;
	private TextArea log;

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
		VBox nameBox = new VBox();
		nameBox.setMinWidth(window.getWidth() * 0.87);
		TextField modpackUrl = new TextField();
		modpackUrl.setPromptText("Modpack url");

		HBox modpackInfo = new HBox();
		Label modpackName = new Label("Name:");
		Label modpackModNumber = new Label("Mods: ");
		Label modpackVersion = new Label("Version: ");
		modpackModNumber.setTranslateX(window.getWidth() / 6);
		modpackVersion.setTranslateX(window.getWidth() / 6 * 2);
		modpackInfo.getChildren().addAll(modpackName, modpackModNumber, modpackVersion);

		nameBox.setSpacing(5);
		nameBox.getChildren().addAll(modpackUrl, modpackInfo);

		VBox rightBox = new VBox();
		Button infoButton = new Button("Get Info");
		Button downloadButton = new Button("Download");
		downloadButton.setDisable(true);
		rightBox.setSpacing(5);
		rightBox.setAlignment(Pos.CENTER);
		rightBox.getChildren().addAll(infoButton, downloadButton);

		HBox topBox = new HBox();
		topBox.setSpacing(5);
		topBox.getChildren().addAll(nameBox, rightBox);

		log = new TextArea();
		log.setFocusTraversable(false);
		log.setTranslateY(10);
		log.setMaxWidth(window.getWidth() * 0.87);
		log.setMaxHeight(window.getHeight() * 0.75);
		log.setEditable(false);

		pane.setTop(topBox);
		pane.setCenter(log);
		pane.setAlignment(log, Pos.CENTER_LEFT);

	}

	public void addMessage(String msg) {
		Platform.runLater(() -> {
			log.appendText(msg);
		});
	}
}
