package Swing.LookAndFeel;

import jl_0.Swing.JFrame_jl_0;
import jl_0.LookAndFeel.LookAndFeel_jl_0;

import javax.swing.*;

public class LookAndFeelClass {
    public static void main(String[] args) {
        LookAndFeel_jl_0.prn();
        UIManager.LookAndFeelInfo[] lookAndFeelInfos = LookAndFeel_jl_0.getLookAndFeels();
        JFrame frame = new JFrame_jl_0(500, 300).getFrame();
        JPanel panel = new JPanel();
        frame.add(panel);

        JButton btn0 = new JButton("Metal");
        JButton btn1 = new JButton("Nimbus");
        JButton btn2 = new JButton("CDE/Motif");
        JButton btn3 = new JButton("GTK+");

        panel.add(btn0);
        panel.add(btn1);
        panel.add(btn2);
        panel.add(btn3);

        btn0.addActionListener(e -> {
                    try {
                        LookAndFeel_jl_0.setLookAndFeel_N_For(0);
                    } catch (Exception ex) {
                        throw new RuntimeException(ex);
                    }
                }
        );
        btn1.addActionListener(e -> {
                    try {
                        LookAndFeel_jl_0.setLookAndFeel_N_For(1);
                    } catch (Exception ex) {
                        throw new RuntimeException(ex);
                    }
                }
        );
        btn2.addActionListener(e -> {
                    try {
                        LookAndFeel_jl_0.setLookAndFeel_N_For(2);
                    } catch (Exception ex) {
                        throw new RuntimeException(ex);
                    }
                }
        );
        btn3.addActionListener(e -> {
                    try {
                        LookAndFeel_jl_0.setLookAndFeel_N_For(3);
                    } catch (Exception ex) {
                        throw new RuntimeException(ex);
                    }
                }
        );
    }
}
