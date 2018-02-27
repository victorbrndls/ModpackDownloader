package harystolho.mpd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	private ChoiceBox<String> modSeleciton;

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
	private ObservableList<String> modOptions;
	private HashMap<CheckBox, Integer> checkBoxList;

	private int totalModNumber;
	private int selectModNumber;

	@FXML
	void initialize() {

		setupElements();
		loadEvents();
	}

	private void setupElements() {
		totalModNumber = 0;
		selectModNumber = 0;

		checkBoxList = new HashMap<>();

		modItemsList = FXCollections.observableArrayList();
		modOptions = FXCollections.observableArrayList();
		modsToDownload = new ArrayList<>();

		modList.setItems(modItemsList);

		modOptions.add("All");
		modOptions.add("Downloaded(TODO)");
		modOptions.add("Not Downloaded(TODO)");
		modSeleciton.setItems(modOptions);
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

		downloadModsButton.setOnAction((e) -> {
			for (Map.Entry<CheckBox, Integer> mod : checkBoxList.entrySet()) {
				if (mod.getKey().isSelected()) {
					modsToDownload.add(mod.getValue());
				}
			}
			controller.setModsToDownload(modsToDownload);
			controller.getSelectWindow().close();
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

	public void updateModNumber() {
		modQuantityLabel.setText(selectModNumber + "/" + totalModNumber);
	}

	public void setMainController(MainController controller) {
		this.controller = controller;
	}

}
