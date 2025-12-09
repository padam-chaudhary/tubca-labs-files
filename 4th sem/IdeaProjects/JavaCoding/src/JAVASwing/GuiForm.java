package JAVASwing;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

class RegistrationForm extends JFrame implements ActionListener {
    private Container container;
    private JLabel titleLabel, nameLabel, mobileLabel;
    private JTextField nameTextField, mobileTextField;
    private JButton submitButton, resetButton;
    private JTextArea resultTextArea;

    public RegistrationForm() {
        setTitle("User Registration Form");
        setSize(400, 300);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        container = getContentPane();
        container.setLayout(null);

        titleLabel = new JLabel("User Registration Form");
        titleLabel.setBounds(120, 10, 200, 20);
        container.add(titleLabel);

        nameLabel = new JLabel("Name:");
        nameLabel.setBounds(50, 50, 100, 20);
        container.add(nameLabel);

        nameTextField = new JTextField();
        nameTextField.setBounds(150, 50, 150, 20);
        container.add(nameTextField);

        mobileLabel = new JLabel("Mobile:");
        mobileLabel.setBounds(50, 80, 100, 20);
        container.add(mobileLabel);

        mobileTextField = new JTextField();
        mobileTextField.setBounds(150, 80, 150, 20);
        container.add(mobileTextField);

        submitButton = new JButton("Submit");
        submitButton.setBounds(100, 120, 80, 30);
        submitButton.addActionListener(this);
        container.add(submitButton);

        resetButton = new JButton("Reset");
        resetButton.setBounds(200, 120, 80, 30);
        resetButton.addActionListener(this);
        container.add(resetButton);

        resultTextArea = new JTextArea();
        resultTextArea.setBounds(50, 160, 250, 60);
        resultTextArea.setEditable(false);
        container.add(resultTextArea);
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == submitButton) {
            String name = nameTextField.getText();
            String mobile = mobileTextField.getText();
            resultTextArea.setText("Name: " + name + "\nMobile: " + mobile);
        } else if (e.getSource() == resetButton) {
            nameTextField.setText("");
            mobileTextField.setText("");
            resultTextArea.setText("");
        }
    }

    public static void main(String[] args) {
        RegistrationForm form = new RegistrationForm();
        form.setVisible(true);
    }
}


