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

	private static MpdGUI gui;
	private Stage window;
	private BorderPane pane;
	private TextArea log;

	private Label modpackName;
	private Label modpackModNumber;
	private Label modpackVersion;

	private Button downloadButton;

	private final int HEIGHT = 600;
	private final int WIDTH = 900;

	public static String modpackID;

	@Override
	public void start(Stage window) throws Exception {
		MpdGUI.gui = this;
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
		DownloadUtils.displayInstructions();
	}

	public void startGUI(String[] args) {
		launch(args);
	}

	public static MpdGUI getGui() {
		return gui;
	}

	private void loadPanes() {
		pane = new BorderPane();
		pane.setPadding(new Insets(5));
		// Modpack URL
		VBox nameBox = new VBox();
		nameBox.setMinWidth(window.getWidth() * 0.87);
		TextField modpackUrl = new TextField();
		modpackUrl.setFocusTraversable(false);
		modpackUrl.setText("https://minecraft.curseforge.com/projects/invasion");
		modpackUrl.setPromptText("Modpack url");
		
		HBox modpackInfo = new HBox();
		// Modpack name, number of mods, version
		modpackName = new Label("Name:");
		modpackModNumber = new Label("Mods: ");
		modpackVersion = new Label("Version: ");
		modpackModNumber.setTranslateX(window.getWidth() / 6);
		modpackVersion.setTranslateX(window.getWidth() / 6 * 2);
		modpackInfo.getChildren().addAll(modpackName, modpackModNumber, modpackVersion);

		nameBox.setSpacing(5);
		nameBox.getChildren().addAll(modpackUrl, modpackInfo);
		
		// Get Info and Download Buttons
		VBox rightBox = new VBox();
		Button infoButton = new Button("Get Info");
		downloadButton = new Button("Download");
		downloadButton.setDisable(true);
		rightBox.setSpacing(5);
		rightBox.setAlignment(Pos.CENTER);
		rightBox.getChildren().addAll(infoButton, downloadButton);
		
		
		infoButton.setOnAction((e) -> {
			DownloadUtils.getInfo(modpackUrl.getText());
		});

		downloadButton.setOnAction((e) -> {
			DownloadUtils.downloadModpack(modpackUrl.getText());
		});

		HBox topBox = new HBox();
		topBox.setSpacing(5);
		topBox.getChildren().addAll(nameBox, rightBox);

		log = new TextArea();
		log.selectPositionCaret(log.lengthProperty().get());
		log.setFocusTraversable(false);
		log.setTranslateY(10);
		log.setMaxWidth(window.getWidth() * 0.87);
		log.setMaxHeight(window.getHeight() * 0.75);
		log.setEditable(false);

		pane.setTop(topBox);
		pane.setCenter(log);
		BorderPane.setAlignment(log, Pos.CENTER_LEFT);

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
