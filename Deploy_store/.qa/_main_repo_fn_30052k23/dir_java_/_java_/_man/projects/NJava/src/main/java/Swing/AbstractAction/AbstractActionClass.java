package Swing.AbstractAction;

import jl_0.Actions.ActionBlueBackground_jl_0;
import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;

public class AbstractActionClass {

    static JFrame frame = new JFrame_jl_0(500, 300).getFrame();
    static JPanel panel = new JPanel();


    public static void main(String[] args) {
        frame.add(panel);
        JButton btn = new JButton( new ActionBlueBackground_jl_0(panel));
        btn.setText("background_color blue");

        panel.add(btn);

    }

//    static class MyAction extends AbstractAction {
//        static JPanel panel;
//
//        MyAction(JPanel panel){
//            this.panel = panel;
//            putValue(AbstractAction.SHORT_DESCRIPTION, "Short description of action to color background blue");
//        }
//
//        @Override
//        public void actionPerformed(ActionEvent e) {
//            panel.setBackground(Color.BLUE);
//        }
//    }
}

// https://www.youtube.com/watch?v=o1m_qOsQde4&list=PL786bPIlqEjRDXpAKYbzpdTaOYsWyjtCX&index=103