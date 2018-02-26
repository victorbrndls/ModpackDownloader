package harystolho.mpd.controller;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;

public class SelectModsController {

	@FXML
	private ListView<CheckBox> modList;

	@FXML
	private ChoiceBox<?> modSeleciton;

	@FXML
	private Label modQuantityLabel;

	@FXML
	private Button downloadModsButton;

	@FXML
	void initialize() {
		setupElements();
		loadEvents();
	}

	private void setupElements() {

	}

	private void loadEvents() {

	}

}
