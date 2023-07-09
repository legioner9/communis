package Swing.ChoiceElm;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import javax.swing.border.Border;
import java.awt.*;
import java.awt.event.ActionListener;

public class RadioButtonClass {
    static JFrame jFrame = new JFrame_jl_0(200, 500).getFrame();
    static JPanel jPanel = new JPanel();

    public static void main(String[] args) {
        jFrame.add(jPanel);

        jPanel.add(new Checkbox("Check this"));

        JRadioButton jRadioButton1 = new JRadioButton("Radio1");
        JRadioButton jRadioButton2 = new JRadioButton("Radio2");
        jRadioButton2.setSelected(true);

        ButtonGroup bg = new ButtonGroup(); //? if condition jRadioButton1 or jRadioButton2 is checked

        bg.add(jRadioButton1);
        bg.add(jRadioButton2);

        jPanel.add(jRadioButton1);
        jPanel.add(jRadioButton2);

        Border border = BorderFactory.createEtchedBorder();

        Border border2 = BorderFactory.createTitledBorder(border,"title border");

        jPanel.setBorder(border2);

        JComboBox <String> jComboBox = new JComboBox<String>();
        jComboBox.addItem("Check this1");
        jComboBox.addItem("Check this2");
        jComboBox.addItem("Check this3");

        jPanel.add(jComboBox);

        jPanel.revalidate();

    }

}
