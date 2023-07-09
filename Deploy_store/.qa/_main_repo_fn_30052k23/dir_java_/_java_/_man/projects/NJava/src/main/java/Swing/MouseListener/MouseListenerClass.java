package Swing.MouseListener;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class MouseListenerClass {

    static JFrame jFrame = new JFrame_jl_0(300, 500).getFrame();
    static JPanel jPanel = new JPanel();

    public static void main(String[] args) {
        jFrame.add(jPanel);
        jPanel.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);
                jPanel.setBackground(Color.BLUE);
            }
        });

    }
}
