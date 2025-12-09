package LAB.Unit5;

public class TryCatchFinally {

        public static void main(String[] args) {
            int numerator = 10;
            int denominator = 0;
            int result = 0;

            try {
                // Attempt to divide by zero
                result = numerator / denominator;
                System.out.println("Result: " + result);
            } catch (ArithmeticException e) {
                // Handle the exception
                System.out.println("Error: Division by zero is not allowed.");
            } finally {
                // This block always executes
                System.out.println("Finally block executed.");
            }

            System.out.println("Program continues after try-catch-finally block.");
        }
    }


