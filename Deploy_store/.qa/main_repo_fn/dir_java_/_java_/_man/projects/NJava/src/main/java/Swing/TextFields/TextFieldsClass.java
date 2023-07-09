package Swing.TextFields;

import jl_0.Swing.JFrame_jl_0;
import jl_0.Swing.JScrollPane_jl_0;

import javax.swing.*;

public class TextFieldsClass {
    static JFrame jFrame = new JFrame_jl_0(300, 500).getFrame();
    static JPanel jPanel = new JPanel();

    public static void main(String[] args) {
        jFrame.add(jPanel);

        JLabel jLabel = new JLabel("This is a label");
        jPanel.add(jLabel);

        JTextField jTextField = new JTextField(20);
        jPanel.add(jTextField);
        jTextField.setText("default value");

        JPasswordField jPasswordField = new JPasswordField("password", 20);
        jPanel.add(jPasswordField);


//        JTextArea jTextArea = new JTextArea(2,10);
//        JScrollPane jScrollPane = new JScrollPane(jTextArea);

        JScrollPane jScrollPane = new JScrollPane_jl_0(2, 10).getPane();

        jPanel.add(jScrollPane);
        // jTextField.getText(); ec. click button

        jPanel.revalidate();
    }
}
