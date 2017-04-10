/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prisondb;
import com.github.sarxos.webcam.Webcam;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
/**
 *
 * @author ayushmandey
 */
public class WebCapture {
    WebCapture(){
        try {
            takeImage();
        } catch (IOException ex) {
            Logger.getLogger(WebCapture.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    void takeImage() throws IOException{
        // get default webcam and open it
		Webcam webcam = Webcam.getDefault();
		webcam.open();

		// get image
		BufferedImage image = webcam.getImage();

		// save image to PNG file
		ImageIO.write(image, "PNG", new File("/Users/ayushmandey/Desktop/PrisonerImages/"+AddInmate.pID.toString()));
                webcam.close();
    }
    public static void main(String[] args) throws IOException {

		
	}
}
