package harystolho.mpd.controller;

import java.util.HashMap;
import java.util.List;

import harystolho.mpd.MainApp;
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

	@FXML
	private Button checkAllButton;

	@FXML
	private Button checkNoneButton;

	private MainController controller;
	private List<Integer> modsToDownload;

	private ObservableList<CheckBox> modItemsList;
	private HashMap<CheckBox, Integer> checkBoxList;

	private int totalModNumber;
	private int selectModNumber;

	@FXML
	void initialize() {
		setupElements();
		loadEvents();
	}

	private void setupElements() {
		modItemsList = FXCollections.observableArrayList();
		checkBoxList = new HashMap<>();

		totalModNumber = 0;
		selectModNumber = 0;

		modList.setItems(modItemsList);
	}

	private void loadEvents() {
		checkAllButton.setOnAction((e) -> {
			for (CheckBox box : modItemsList) {
				box.setSelected(true);
				selectModNumber = totalModNumber;
				updateModNumber();
			}
		});

		checkNoneButton.setOnAction((e) -> {
			for (CheckBox box : modItemsList) {
				box.setSelected(false);
				selectModNumber = 0;
				updateModNumber();
			}
		});
	}

	public void addNewMod(int id, String name) {
		totalModNumber++;
		selectModNumber++;

		CheckBox mod = new CheckBox(name);

		mod.setOnAction((e) -> {
			if (mod.isSelected()) {
				selectModNumber++;
			} else {
				selectModNumber--;
			}
			updateModNumber();
		});

		mod.setSelected(true);
		checkBoxList.put(mod, id);
		modItemsList.add(mod);
	}

	public void setMainController(MainController controller) {
		this.controller = controller;

	}

	public void updateModNumber() {
		modQuantityLabel.setText(selectModNumber + "/" + totalModNumber);
	}

}
