import java.awt.Color;
import java.awt.Dimension;
import javax.swing.*;

/**
 *
 * @author AnNguyen
 */
public class Test extends JFrame{

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        JLabel label = new JLabel("Label", JLabel.CENTER);
        Test t= new Test();
        label.setBackground(Color.red);
        label.setPreferredSize(new Dimension(100,100));
        t.add(label);
        t.setSize(300, 300);
        t.setBackground(Color.yellow);
        t.setVisible(true);
    }

}