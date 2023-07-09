package Swing.ChoiceElm;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;

public class SliderClass {
    static JFrame jFrame = new JFrame_jl_0(200, 500).getFrame();
    static JPanel jPanel = new JPanel();

    public static void main(String[] args) {
        jFrame.add(jPanel);

        JSlider jSlider = new JSlider(JSlider.HORIZONTAL, 0, 100, 20);
        jSlider.setMinorTickSpacing(10);
        jSlider.setMajorTickSpacing(20);
        jSlider.setSnapToTicks(true); // ? discrete to MinorTickSpacing
        jSlider.setPaintTicks(true);
        jSlider.setPaintLabels(true);


        jPanel.add(jSlider);

        jFrame.revalidate();
    }
}
