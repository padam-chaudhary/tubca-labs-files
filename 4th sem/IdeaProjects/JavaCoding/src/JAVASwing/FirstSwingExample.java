package JAVASwing;

import javax.swing.*;
import javax.swing.text.JTextComponent;
import java.awt.*;

public class FirstSwingExample {
    public static void main(String[] args) {
        JFrame f=new JFrame();//creating instance of JFrame

        JButton b=new JButton("click");//creating instance of JButton
        b.setBounds(130,100,100, 40);//x axis, y axis, width, height
//        JTextComponent textComponent = new TextC();
        TextArea area = new TextArea("Hello world");

        area.setBounds(100, 100, 100, 100);
        f.add(area);//adding button in JFrame

        f.setSize(400,500);//400 width and 500 height
        f.setLayout(null);//using no layout managers
        f.setVisible(true);//making the frame visible
    }
}
