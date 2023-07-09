package Swing.HelloWorld;


import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import java.awt.*;

public class HelloWorldClass {
    public static void main(String[] args) {
        JFrame jFrame = new JFrame_jl_0(500, 300).getFrame();
        jFrame.add(new MyComponent());
    }

    static class MyComponent extends JComponent {
        @Override
        protected void paintComponent(Graphics g) {
            Font font = new Font("Pragmata Pro Mono Regular", Font.PLAIN, 15);
            Graphics2D g2 = (Graphics2D) g;
            g2.setFont(font);
            g2.drawString("Hello, World)))", 50, 50);

        }
    }
}
