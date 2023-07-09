package jl_0.Swing;

import javax.swing.*;

public class JScrollPane_jl_0 {
    int rows;
    int columns;

    static JScrollPane jScrollPane;

    public JScrollPane_jl_0(int rows, int columns) {
        this.rows = rows;
        this.columns = columns;
        jScrollPane = JScrollPane_jl_0.createJScrollPane(rows,columns);
    }


    static public JScrollPane createJScrollPane(int rows, int columns){

        JTextArea jTextArea = new JTextArea(rows,columns);
        return new JScrollPane(jTextArea);

    }

    public JScrollPane getPane() {
        return jScrollPane;
    }
}


