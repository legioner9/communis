package Swing.WindowListener;
import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class WindowListenerClass {
    public static void main(String[] args) {
        JFrame frame = new JFrame_jl_0(500, 300).getFrame();

        frame.addWindowListener(new WindowAdapter() {

            @Override
            public void windowClosing(WindowEvent e) {
                System.out.println("Window closing");
            }

        });
    }
}
