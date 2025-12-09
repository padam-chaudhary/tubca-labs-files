package LAB.Unit11;
import javax.swing.*;
public class MenuClass {
        public static void main(String[] args) {
            JFrame frame = new JFrame("Menu Example");
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.setSize(400, 300);

            // Create a menu bar
            JMenuBar menuBar = new JMenuBar();

            // Create a menu
            JMenu fileMenu = new JMenu("File");

            // Create menu items
            JMenuItem openItem = new JMenuItem("Open");
            JMenuItem saveItem = new JMenuItem("Save");
            JMenuItem exitItem = new JMenuItem("Exit");

            // Add menu items to the menu
            fileMenu.add(openItem);
            fileMenu.add(saveItem);
            fileMenu.addSeparator(); // Separator line
            fileMenu.add(exitItem);

            // Add the menu to the menu bar
            menuBar.add(fileMenu);

            // Set the menu bar for the frame
            frame.setJMenuBar(menuBar);

            frame.setVisible(true);
        }
    }


