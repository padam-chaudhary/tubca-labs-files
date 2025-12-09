package JAVASwing;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class SumDifferenceCalculator extends JFrame {
    private JTextField textField1, textField2;
    private JLabel resultLabel;

    public SumDifferenceCalculator() {
        // Set up the frame
        setTitle("Sum and Difference Calculator");
        setSize(300, 150);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Create components
        textField1 = new JTextField(10);
        textField2 = new JTextField(10);
        resultLabel = new JLabel("Result: ");

        // Set up the layout
        JPanel panel = new JPanel();
        panel.add(new JLabel("Number 1: \n"));
        panel.add(textField1);
        panel.add(new JLabel("Number 2: "));
        panel.add(textField2);
        panel.add(resultLabel);

        // Add buttons for sum and difference
        JButton addButton = new JButton("Add");
        addButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                calculateAndDisplay("Sum");
            }
        });
        panel.add(addButton);

        JButton subtractButton = new JButton("Subtract");
        subtractButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                calculateAndDisplay("Difference");
            }
        });
        panel.add(subtractButton);

        // Add the panel to the frame
        add(panel);
        setVisible(true);
    }

    private void calculateAndDisplay(String operation) {
        try {
            double num1 = Double.parseDouble(textField1.getText());
            double num2 = Double.parseDouble(textField2.getText());

            if (operation.equals("Sum")) {
                resultLabel.setText("Result: " + (num1 + num2)+"\n");
            } else if (operation.equals("Difference")) {
                resultLabel.setText("Result: " + (num1 - num2)+"\n");
            }
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(this, "Invalid input. Please enter valid numbers.");
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new SumDifferenceCalculator());
    }
}

