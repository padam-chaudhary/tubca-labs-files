package LAB.Unit9;
import java.util.*;
public class AutoboxingUnboxing {

        public static void main(String[] args) {
            // Autoboxing: Converting primitives to their corresponding wrapper objects
            Integer num1 = 10; // Autoboxing int to Integer
            Integer num2 = 3;  // Autoboxing int to Integer
//            Integer num3 = 7;  // Autoboxing int to Integer

            // Auto-unboxing: Converting wrapper objects back to primitives
            int intValue1 = num1; // Auto-unboxing Integer to int
            int intValue2 = num2; // Auto-unboxing Integer to int
//            int intValue3 = num3; // Auto-unboxing Integer to int

            System.out.println("Autoboxing and Auto-unboxing Demo:");
            System.out.println("Integer Value 1: " + num1);
//            System.out.println("Integer Value 2: " + num2);
//            System.out.println("Integer Value 3: " + num3);
            System.out.println("Unboxed Integer Value 1: " + intValue1);
            System.out.println("Unboxed Integer Value 2: " + intValue2);
//            System.out.println("Unboxed Integer Value 3: " + intValue3);

            // Simple sorting program using autoboxing and autounboxing
            List<Integer> numbers = new ArrayList<>();
            numbers.add(5); // Autoboxing int to Integer
            numbers.add(2); // Autoboxing int to Integer
//            numbers.add(8); // Autoboxing int to Integer

            System.out.println("\nOriginal List: " + numbers);

            // Sorting the list
            Collections.sort(numbers); // Autounboxing Integer to int for comparison

            System.out.println("Sorted List: " + numbers);
        }
    }




