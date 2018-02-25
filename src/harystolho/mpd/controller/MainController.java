package harystolho.mpd.controller;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.shape.Arc;

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
	private ChoiceBox<?> languagueBox;

	@FXML
	private Button downoadFolderButton;

	@FXML
	private Button checkUpdatesButton;

}
