package Swing.ChoiceElm;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;

public class MenuClass {
    static JFrame jFrame = new JFrame_jl_0(300, 500).getFrame();
    static JPanel jPanel = new JPanel();

    public static void main(String[] args) {
        jFrame.add(jPanel);

        JMenuBar jMenuBar = new JMenuBar();

        JMenu jMenuFile = new JMenu("file");
        JMenuItem open = jMenuFile.add(new JMenuItem("Open", 'O'));
        open.setEnabled(false);
        jMenuFile.add(new JMenuItem("Save"));
        jMenuFile.addSeparator(); // ? separator at file menu

        JMenuItem exit = new JMenuItem("Exit");
        exit.addActionListener(e -> System.exit(0)); // ? exit Listener to menuItem
        exit.setAccelerator(KeyStroke.getKeyStroke("ctrl E")); // ? exit shortcut ctrl e
        jMenuFile.add(exit);

        JMenu jMenuEdit = new JMenu("edit");
        jMenuEdit.add(new JMenuItem("Cut", 'C'));
        jMenuEdit.add(new JMenuItem("Copy"));
        jMenuEdit.addSeparator();
        jMenuEdit.add(new JMenuItem("Paste"));

        JMenu jMenuOptions = new JMenu("Options"); // ? options menu as submenu in menu edit
        jMenuOptions.add(new JMenuItem("A"));
        jMenuOptions.add(new JMenuItem("B"));
        jMenuEdit.add(jMenuOptions);

        jMenuEdit.add(new JCheckBoxMenuItem("CheckBox"));

        ButtonGroup buttons = new ButtonGroup();
        JRadioButtonMenuItem button1 = new JRadioButtonMenuItem("RadioButton1");
        JRadioButtonMenuItem button2 = new JRadioButtonMenuItem("RadioButton2");
        buttons.add(button1);
        buttons.add(button2);
        jMenuEdit.add(button1);
        jMenuEdit.add(button2);

        jMenuBar.add(jMenuFile);
        jMenuBar.add(jMenuEdit);

        jPanel.add(jMenuBar);

        jFrame.revalidate();

    }
}
