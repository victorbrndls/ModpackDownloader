package harystolho.mpd.controller;

import java.util.HashMap;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
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

	private ObservableList<CheckBox> modItemsList = FXCollections.observableArrayList();
	private HashMap<CheckBox, Integer> checkBoxList = new HashMap<>();

	@FXML
	void initialize() {
		setupElements();
		loadEvents();
	}

	private void setupElements() {
		modList.setItems(modItemsList);
	}

	private void loadEvents() {

	}

	private void addNewMod(int id, String name) {
		CheckBox mod = new CheckBox(name);
		checkBoxList.put(mod, id);
		modItemsList.add(mod);
	}

}
