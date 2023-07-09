package jl_0.Swing;

import javax.swing.*;
import java.awt.*;

public class JFrame_jl_0 {
    int width;
    int height;
    static JFrame jFrame;

    public JFrame_jl_0(int width, int height) {
        this.width = width;
        this.height = height;
        JFrame_jl_0.main();
    }

    public static void main() {
        Toolkit toolkit = Toolkit.getDefaultToolkit();
        Dimension dimension = toolkit.getScreenSize();
        System.out.println("toolkit.getScreenSize().width: " + dimension.width);
        System.out.println("toolkit.getScreenSize().height: " + dimension.height);

        Font[] fonts = GraphicsEnvironment.getLocalGraphicsEnvironment().getAllFonts();
//        for (Font font : fonts) {
//            System.out.println(font.toString());
//        }


        Font font = new Font("Pragmata Pro Mono Regular", Font.PLAIN, 20);

        JFrame jFrame = new JFrame() {
        };
        jFrame.setVisible(true);
        jFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        int width = 500;
        int height = 300;

        jFrame.setBounds((dimension.width  - width) / 2, (dimension.height  - width) / 2, width, height);
        jFrame.setTitle("MyApplication");
        JFrame_jl_0.jFrame = jFrame;
    }

    public JFrame getFrame (){
        return jFrame;
    }

}
