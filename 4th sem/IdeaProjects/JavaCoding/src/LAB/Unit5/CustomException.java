package LAB.Unit5;
// Custom exception class
class InvalidAgeException extends Exception {
    public InvalidAgeException(String message) {
        super(message);
    }
}

public class CustomException {

        // Method to validate age
        public static void validateAge(int age) throws InvalidAgeException {
            if (age < 18) {
                throw new InvalidAgeException("Age must be 18 or older.");
            } else {
                System.out.println("Age is valid.");
            }
        }

        public static void main(String[] args) {
            int[] ages = {16, 20, 15};

            for (int age : ages) {
                try {
                    System.out.println("Validating age: " + age);
                    validateAge(age);
                } catch (InvalidAgeException e) {
                    System.out.println("Caught Exception: " + e.getMessage());
                } finally {
                    System.out.println("Validation complete for age: " + age + "\n");
                }
            }

            System.out.println("Program continues after try-catch-finally block.");
        }
    }


