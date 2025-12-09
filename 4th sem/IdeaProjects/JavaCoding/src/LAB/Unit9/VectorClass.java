package LAB.Unit9;
import java.util.Vector;
public class VectorClass {



        public static void main(String[] args) {
            // Create a Vector to store integers
            Vector<Integer> intVector = new Vector<>();

            // Add elements to the Vector
            intVector.add(10);
            intVector.add(20);
            intVector.add(30);

            // Access elements by index
            System.out.println("Element at index 1: " + intVector.get(1));

            // Iterate through the Vector
            System.out.println("Vector elements:");
            for (Integer num : intVector) {
                System.out.println(num);
            }
        }
    }


