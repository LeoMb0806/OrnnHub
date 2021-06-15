package sample;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

import java.net.URL;
import java.util.ResourceBundle;

public class Controller implements Initializable {
    @FXML
    private ImageView ivOrnnHub;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        this.ivOrnnHub.setImage(new Image("file:orrnhub.png"));
    }
}
