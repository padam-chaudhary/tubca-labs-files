package LAB.Unit_3;
class BankAccount {
    private String accountNumber;
    private double balance;

    // Constructor to initialize account details
    public BankAccount(String accountNumber, double initialBalance) {
        this.accountNumber = accountNumber;
        this.balance = initialBalance;
    }

    // Getter method for account balance
    public double getBalance() {
        return balance;
    }

    // Method to deposit money into the account
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("Deposit successful. New balance: $" + balance);
        } else {
            System.out.println("Invalid deposit amount.");
        }
    }

    // Method to withdraw money from the account
    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("Withdrawal successful. New balance: $" + balance);
        } else {
            System.out.println("Invalid withdrawal amount or insufficient funds.");
        }
    }

    public String getAccountNumber() {
        return accountNumber;
    }
}
public class IncapsulationClass {
    public static void main(String[] args) {
        BankAccount myAccount = new BankAccount("123456", 1000.0);

        System.out.println("Account Number: " + myAccount.getAccountNumber());
        System.out.println("Initial Balance: $" + myAccount.getBalance());

        myAccount.deposit(500.0);
        myAccount.withdraw(200.0);
    }
}
