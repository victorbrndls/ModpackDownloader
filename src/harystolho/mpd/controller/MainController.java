package harystolho.mpd.controller;

import java.io.File;
import java.util.ResourceBundle;

import harystolho.mpd.DownloadUtils;
import harystolho.mpd.Main;
import harystolho.mpd.MainApp;
import harystolho.mpd.SelectModsWindow;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.control.Tooltip;
import javafx.scene.shape.Arc;
import javafx.stage.DirectoryChooser;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

public class MainController {

	@FXML
	private TextField modpackUrl;

	@FXML
	private Label modpacklName;

	@FXML
	private Label modpackMods;

	@FXML
	private Button selectModsButton;

	@FXML
	private Label modpackVersion;

	@FXML
	private Button getInfoButton;

	@FXML
	private Button downloadButton;

	@FXML
	private TextArea MPDConsole;

	@FXML
	private Arc progressArch;

	@FXML
	private Label progressNumber;

	@FXML
	private ChoiceBox<String> languagueBox;

	@FXML
	private Button downoadFolderButton;

	@FXML
	private Button checkUpdatesButton;

	@FXML
	private Tooltip folderToolTip;

	// --- //
	private DownloadUtils utils;
	private FXMLLoader loader;
	private MainApp app;

	public String modpackID;

	private ObservableList<String> languageList = FXCollections.observableArrayList();

	@FXML
	void initialize() {
		utils = new DownloadUtils(this);

		setupElements();
		loadEvents();

	}

	public void addText(String text) {
		Platform.runLater(() -> {
			this.MPDConsole.appendText(text + "\n");
		});
	}

	public void setInfo(String modpackName, int mods, String version) {
		this.modpacklName.setText(modpackName);
		this.modpackMods.setText(mods + "");
		this.modpackVersion.setText(version);

	}

	public void setFXMLLoader(FXMLLoader loader) {
		this.loader = loader;
	}

	public void setMainApp(MainApp app) {
		this.app = app;
	}

	@FXML
	private void setupElements() {
		languageList.add("English");
		languageList.add("Portuguese");
		languageList.add("Chinese");

		languagueBox.setItems(languageList);
		selectCorrectLanguage();

	}

	private void selectCorrectLanguage() {
		switch (Main.configs.getProperty("lang")) {
		case "en":
			languagueBox.getSelectionModel().select(0);
			break;
		case "pt":
			languagueBox.getSelectionModel().select(1);
			break;
		case "zh":
			languagueBox.getSelectionModel().select(2);
			break;
		default:
			break;
		}
	}

	@FXML
	private void loadEvents() {
		getInfoButton.setOnAction(e -> {
			utils.getInfo(modpackUrl.getText());
			selectModsButton.setDisable(false);
			downloadButton.setDisable(false);
		});

		downloadButton.setOnAction(e -> {
			utils.downloadModpack(modpackUrl.getText());
		});

		selectModsButton.setOnAction(e -> {
			displaySelectModsStage();
		});

		languagueBox.getSelectionModel().selectedIndexProperty().addListener((observer, oldValue, newValue) -> {
			String lang = languageList.get(newValue.intValue());
			switch (lang) {
			case "English":
				changeLangugue("en");
				break;
			case "Portuguese":
				changeLangugue("pt");
				break;
			case "Chinese":
				changeLangugue("zh");
				break;
			default:
				break;
			}

		});

		downoadFolderButton.setOnAction(e -> {
			DirectoryChooser chooser = new DirectoryChooser();
			chooser.setTitle(loader.getResources().getString("mpd.folder"));
			File downloadFolder = chooser.showDialog(app.getStage());
			Main.configs.setProperty("downloadFolder", downloadFolder.getAbsolutePath());
			Main.saveConfigs();
		});

		folderToolTip.setOnShowing(e -> {
			if (Main.configs.getProperty("downloadFolder").equals("/")) {
				folderToolTip.setText(loader.getResources().getString("mpd.folderInfo"));
			} else {
				folderToolTip.setText(Main.configs.getProperty("downloadFolder") + "\\"
						+ loader.getResources().getString("mpd.modpackName"));
			}
		});

	}

	private void changeLangugue(String lang) {
		Main.configs.setProperty("lang", lang);
		Main.saveConfigs();
		addText(loader.getResources().getString("mpd.reloadMessage"));
	}

	private void displaySelectModsStage() {
		addText(loader.getResources().getString("mpd.loadingMods"));
		SelectModsWindow window = new SelectModsWindow(this);
		window.display();
	}

	public FXMLLoader getLoader() {
		return this.loader;
	}

	public MainApp getApp() {
		return this.app;
	}

	public void setArchPorcentage(double porcentage) {
		Platform.runLater(() -> {
			progressArch.setLength((porcentage / 100) * 360);
		});
	}

	public void setNumberPorcentage(double porcentge) {
		Platform.runLater(() -> {
			progressNumber.setText(String.format("%.2f", porcentge) + "%");
		});
	}
}
