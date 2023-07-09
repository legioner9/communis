package Swing.Img;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import java.awt.*;
import java.net.MalformedURLException;
import java.net.URL;

public class ImgClass {
    public static void main(String[] args) {
        JFrame jFrame = new JFrame_jl_0(500, 300).getFrame();
        jFrame.add(new MyComponent_2());
    }

    public static class MyComponent_2 extends JComponent {
        @Override
        protected void paintComponent(Graphics g) {
            Graphics2D g2 = (Graphics2D) g;
            URL url = null;
            try {
                url = new URL("https://sun1-23.userapi.com/impf/c604824/v604824133/16914/nKF-Pi54rTw.jpg?size=200x0&quality=88&crop=179,0,1810,1810&sign=cff51d412949c3f71db3936960c55ddd&c_uniq_tag=NROvpKiqfe3-2HRBQORca58ELiy1gBtkiyWySCVLj3g&ava=1");
            } catch (MalformedURLException e) {
                throw new RuntimeException(e);
            }
            Image image = new ImageIcon(url).getImage();
            g2.drawImage(image, 220, 50, null);

            Image image_2 = new ImageIcon("src_img/200_200.jpg").getImage();
            g2.drawImage(image_2, 10, 10, null);
        }
    }
}
