package jl_0.Actions;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;

public class ActionBlueBackground_jl_0 extends AbstractAction {
    static JPanel panel;
    public ActionBlueBackground_jl_0(JPanel panel){
        this.panel = panel;
        putValue(AbstractAction.SHORT_DESCRIPTION, "Short description of action to color background blue");
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        panel.setBackground(Color.BLUE);
    }
}
