package Swing.ActionListener;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import java.awt.*;

public class ActionListenerClass {
    public static void main(String[] args) {
        JFrame jFrame = new JFrame_jl_0(500, 300).getFrame();
        JPanel jPanel = new JPanel();
        jFrame.add(jPanel);

        JButton jButton = new JButton("submit");
//        jButton.addActionListener(new ActionListener() {
//            @Override
//            public void actionPerformed(ActionEvent e) {
//                jPanel.setBackground(Color.BLUE);
//            }
//        });
        jButton.addActionListener(e -> jPanel.setBackground(Color.BLUE));

        jPanel.add(jButton);


    }
}
