package Swing.ChoiceElm;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import javax.swing.border.Border;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class PopupMenuClass {
    static JFrame jFrame = new JFrame_jl_0(300,500).getFrame();
    static JPanel jPanel = new JPanel();

    public static void main(String[] args) {
        jFrame.add(jPanel);

        JPopupMenu jPopupMenu = new JPopupMenu(); // ? click right button mouse menu
        jPopupMenu.add(new JMenuItem("one"));
        jPopupMenu.add(new JMenuItem("two"));
        JMenuItem exitMenuItem  = new JMenuItem("exit");
        exitMenuItem.addActionListener(e -> {
            System.exit(0); // ! exit only if user opened the popup menu
        });
        exitMenuItem.setAccelerator(KeyStroke.getKeyStroke("ctrl E"));
        jPopupMenu.add(exitMenuItem);

        jPanel.setComponentPopupMenu(jPopupMenu);

        jPanel.revalidate();
    }
    
}
