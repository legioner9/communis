package Swing.MouseListener;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class MouseListenerXYClass {

    static JFrame jFrame = new JFrame_jl_0(300, 500).getFrame();

    public static void main(String[] args) {
        JComponent jComponent = new MyComponent_2();
        jFrame.add(jComponent);
        jFrame.addMouseMotionListener(new MouseAdapter() {
            @Override
            public void mouseMoved(MouseEvent e) {
                super.mouseMoved(e);
                MyComponent_2.xCoord = e.getX();
                MyComponent_2.yCoord = e.getY();

                jComponent.repaint();
            }
        });

    }

    static class MyComponent_2 extends JComponent {
        public static int xCoord;
        public static int yCoord;

        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            ((Graphics2D) g).drawString("x: " + xCoord + ", y: " + yCoord, 50, 50);
        }
    }
}
