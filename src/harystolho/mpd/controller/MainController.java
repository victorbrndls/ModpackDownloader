package harystolho.mpd.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import harystolho.mpd.DownloadUtils;
import harystolho.mpd.Main;
import harystolho.mpd.MainApp;
import harystolho.mpd.Updater;
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

	private Stage selectWindow;

	public String modpackID;

	private ObservableList<String> languageList = FXCollections.observableArrayList();

	private List<Integer> modsToDownload;

	@FXML
	void initialize() {
		utils = new DownloadUtils(this);

		setupElements();
		loadEvents();
		//
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
			displaySelectMods();
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

		checkUpdatesButton.setOnAction((e) -> {
			addText(loader.getResources().getString("mpd.checkUpdateMessage"));
		});

	}

	private void changeLangugue(String lang) {
		loader.setResources(ResourceBundle.getBundle("harystolho.lang." + lang));
		Main.configs.setProperty("lang", lang);
		Main.saveConfigs();
		app.getStage().setScene(app.loadLayout());
	}

	private void displaySelectMods() {
		Main.ex.execute(() -> {
			addText(loader.getResources().getString("mpd.loadingMods"));
			File downloadDir = utils.createDownloadDir(modpackUrl.getText());
			if (!utils.checkIfAlreadyDownloaded(downloadDir)) {
				Path path = Paths.get(downloadDir + "/" + modpackID + ".zip");
				utils.downloadModpackConfigs(path);
				utils.unZipModpackConfigs(path, downloadDir);
			}

			HashMap<Integer, String> idToModName = new HashMap<>();

			try {
				StringBuilder sb = utils.loadModsJSON(downloadDir);

				JSONObject json = new JSONObject(sb.toString());

				JSONArray modList = new JSONArray(json.get("files").toString());

				Document doc = Jsoup.parse(new File(downloadDir + "/modlist.html"), "UTF-8");
				Elements mods = doc.getElementsByTag("a");

				JSONObject mod;
				for (int x = 0; x < modList.length(); x++) {
					mod = new JSONObject(modList.get(x).toString());
					try {
						idToModName.put(mod.getInt("projectID"), mods.get(x).text().split("\\(")[0]);
					} catch (Exception e) {
						System.out.println(e);
					}
				}

			} catch (IOException e) {
				e.printStackTrace();
			}

			Platform.runLater(() -> {
				selectWindow = new Stage();
				selectWindow.setTitle("Select mods to download");

				selectWindow.setScene(getApp().loadSelectModsScene());
				selectWindow.show();

				for (Map.Entry<Integer, String> e : idToModName.entrySet()) {
					app.getSelectModsController().addNewMod(e.getKey(), e.getValue());
				}

				app.getSelectModsController().updateModNumber();
			});
		});

	}

	public void setModsToDownload(List<Integer> list) {
		modsToDownload = list;
		addText("");
		addText(loader.getResources().getString("mpd.startDownload"));
	}

	public List<Integer> getModsToDownload() {
		return modsToDownload;
	}

	public void setFXMLLoader(FXMLLoader loader) {
		this.loader = loader;
	}

	public void setMainApp(MainApp app) {
		this.app = app;
	}

	public FXMLLoader getLoader() {
		return loader;
	}

	public MainApp getApp() {
		return app;
	}

	public Stage getSelectWindow() {
		return selectWindow;
	}

	private void checkUpdates() {
		String[] currentVersion = Main.configs.getProperty("version").split(".");
		String[] lastVersion = Updater.checkLastVersion().split(".");

		System.out.println(currentVersion[0]);

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
