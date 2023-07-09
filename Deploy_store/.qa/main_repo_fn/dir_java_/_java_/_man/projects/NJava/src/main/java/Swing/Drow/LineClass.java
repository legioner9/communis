package Swing.Drow;

import jl_0.Swing.JFrame_jl_0;

import javax.swing.*;
import java.awt.*;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

public class LineClass {
    public static void main(String[] args) {
        JFrame jFrame = new JFrame_jl_0(500, 300).getFrame();
        jFrame.add(new MyComponent());
    }

    public static class MyComponent extends JComponent {
        @Override
        protected void paintComponent(Graphics g) {

            Graphics2D g2 = (Graphics2D) g;
            Point2D p1 = new Point2D.Double(30, 30);
            Point2D p2 = new Point2D.Double(200, 200);

            Point2D p3 = new Point2D.Double(50,50);
            Point2D p4 = new Point2D.Double(250,250);


            Line2D l2 = new Line2D.Double(p1, p2);
            g2.draw(l2);

            g2.setPaint(new Color(50, 200, 100, 200));
            Ellipse2D e2 = new Ellipse2D.Double(200, 100, 200, 100);
//            Ellipse2D e2 = new Ellipse2D.Double();
//            e2.setFrameFromDiagonal(p1,p2);
            g2.draw(e2);
//            g2.fill(e2);

            g2.setPaint(new Color(200, 50, 100, 200));
            Rectangle2D r = new Rectangle2D.Double(30, 40, 100, 50);
//            Rectangle2D r = new Rectangle2D.Double();
//            r.setFrameFromDiagonal(p3, p4);
            g2.draw(r);

        }
    }
}
