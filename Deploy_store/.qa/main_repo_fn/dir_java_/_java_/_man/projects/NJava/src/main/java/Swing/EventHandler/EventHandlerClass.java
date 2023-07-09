package Swing.EventHandler;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import java.awt.event.ActionListener;
import java.beans.EventHandler;

public class EventHandlerClass {
    public static void main(String[] args) {
        JFrame frame = new JFrame_jl_0(500, 400).getFrame();
        JPanel panel = new JPanel();
        frame.add(panel);

        JButton btn = new JButton("submit");
        panel.add(btn);

//        btn.addActionListener(e -> {
//            String str = ((JButton) e.getSource()).getText().trim(); // "submit"
//            frame.setTitle(str);
//        });

        btn.addActionListener(EventHandler.create(ActionListener.class, frame,"title", "source.text"));


    }
}
