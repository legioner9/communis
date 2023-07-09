package Swing.KeyStroke;

import jl_0.Actions.ActionBlueBackground_jl_0;
import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;

public class KeyStrokeClass {
    static JFrame frame = new JFrame_jl_0(500, 300).getFrame();
    static JPanel panel = new JPanel();


    public static void main(String[] args) {
        frame.add(panel);
        JButton btn = new JButton("background_color blue");
//        btn.setText("background_color blue");
        panel.add(btn);

        KeyStroke keyStroke = KeyStroke.getKeyStroke("ctrl B");
        InputMap inputMap = panel.getInputMap(JComponent.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT); //? map(keyStroke, actionStroke) when ancestor of focused component is focused at panel
        ActionMap actionMap = panel.getActionMap(); //? map(name, action) in panel
        inputMap.put(keyStroke, "ActionBlueBackground_jl_0 for keystroke: ctrl B");
        actionMap.put("ActionBlueBackground_jl_0 for keystroke: ctrl B", new ActionBlueBackground_jl_0(panel));

    }

}

// https://www.youtube.com/watch?v=mvsOAbJ_5y4&t=167s
// when focus at panel : ctrl B -> action change color