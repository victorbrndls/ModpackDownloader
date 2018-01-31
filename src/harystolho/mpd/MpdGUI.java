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

	public static MpdGUI gui;
	private Stage window;
	private BorderPane pane;
	private TextArea log;

	private Label modpackName;
	private Label modpackModNumber;
	private Label modpackVersion;

	private Button downloadButton;

	private final int HEIGHT = 600;
	private final int WIDTH = 900;

	@Override
	public void start(Stage window) throws Exception {
		this.gui = this;
		this.window = window;
		window.setTitle("Modpack Downloader");
		window.setHeight(HEIGHT);
		window.setWidth(WIDTH);

		loadPanes();

		Scene scene = new Scene(pane);

		window.setOnCloseRequest((e) -> {
			Main.ex.shutdown();
		});

		window.setScene(scene);
		window.show();
		System.out.println("1: " + Thread.currentThread().getName());
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
		modpackUrl.setFocusTraversable(false);
		modpackUrl.setText("https://minecraft.curseforge.com/projects/invasion");
		modpackUrl.setPromptText("Modpack url");

		HBox modpackInfo = new HBox();
		modpackName = new Label("Name:");
		modpackModNumber = new Label("Mods: ");
		modpackVersion = new Label("Version: ");
		modpackModNumber.setTranslateX(window.getWidth() / 6);
		modpackVersion.setTranslateX(window.getWidth() / 6 * 2);
		modpackInfo.getChildren().addAll(modpackName, modpackModNumber, modpackVersion);

		nameBox.setSpacing(5);
		nameBox.getChildren().addAll(modpackUrl, modpackInfo);

		VBox rightBox = new VBox();
		Button infoButton = new Button("Get Info");
		downloadButton = new Button("Download");
		downloadButton.setDisable(true);
		rightBox.setSpacing(5);
		rightBox.setAlignment(Pos.CENTER);
		rightBox.getChildren().addAll(infoButton, downloadButton);

		infoButton.setOnAction((e) -> {
			DownloadThread.getInfo(modpackUrl.getText());
		});

		downloadButton.setOnAction((e) -> {
			DownloadThread.download("te");
		});

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
			log.appendText(msg + '\n');
		});
	}

	public void setInfo(String name, int mods, String version) {
		Platform.runLater(() -> {
			modpackName.setText("Modpack: " + name);
			modpackModNumber.setText("Mods: " + mods);
			modpackVersion.setText("Version: " + version);

			downloadButton.setDisable(false);
		});
	}
}
