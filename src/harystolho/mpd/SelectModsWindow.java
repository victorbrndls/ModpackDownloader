package harystolho.mpd;

import harystolho.mpd.controller.MainController;
import javafx.stage.Stage;

public class SelectModsWindow {

	private MainController controller;

	public SelectModsWindow(MainController controller) {
		this.controller = controller;
	}

	public void display() {
		Stage window = new Stage();
		window.setTitle("Select mods for download");

		window.setScene(controller.getApp().loadSelectModsScene());
		window.show();
	}

}
