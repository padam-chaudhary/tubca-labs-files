package LAB.Unit_3;
class Calculator {
    public int add(int a, int b) {
        return a + b;
    }
    public double add(double a, double b) {
        return a + b;
    }
}
public class OverloadingMethod {
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        System.out.println("Sum of integers: " + calc.add(5, 3)); // Calls the int version
        System.out.println("Sum of doubles: " + calc.add(2.5, 1.8)); // Calls the double version
        // Output: "Sum of integers: 8" and "Sum of doubles: 4.3"
    }
}
