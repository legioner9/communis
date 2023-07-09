package jl_0.LookAndFeel;

import javax.swing.*;

public class LookAndFeel_jl_0 {
    public static void prn(){
        UIManager.LookAndFeelInfo[] lookAndFeelInfos = UIManager.getInstalledLookAndFeels();
        for (UIManager.LookAndFeelInfo lookAndFeelInfo : lookAndFeelInfos) {

            System.out.println("lookAndFeelInfo.getClassName(): " + lookAndFeelInfo.getClassName());
            System.out.println("lookAndFeelInfo.getName(): " + lookAndFeelInfo.getName());

        }
    }
    public  static UIManager.LookAndFeelInfo[] getLookAndFeels (){
        UIManager.LookAndFeelInfo[] lookAndFeelInfos = UIManager.getInstalledLookAndFeels();
        return lookAndFeelInfos;
    }

    public static void setLookAndFeel_N_For (int n_for) throws Exception {
        UIManager.LookAndFeelInfo[] lookAndFeelInfos = UIManager.getInstalledLookAndFeels();
        if (n_for < lookAndFeelInfos.length && n_for >= 0) {
            try {
                UIManager.setLookAndFeel(lookAndFeelInfos[n_for].getClassName());
                System.out.println("LookAndFeel info now is: " + lookAndFeelInfos[n_for].getClassName());
            } catch (ClassNotFoundException | InstantiationException | IllegalAccessException |
                     UnsupportedLookAndFeelException ex) {
                throw new RuntimeException(ex);
            }
        } else {
            throw new Exception("n_for must be greater than 0 and less than or equal to " + lookAndFeelInfos.length);
        }
    }
}
