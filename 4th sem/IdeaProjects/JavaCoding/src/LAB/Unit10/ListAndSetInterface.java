package LAB.Unit10;
import java.util.*;
public class ListAndSetInterface {

        public static void main(String[] args) {
            // Create a List of integers
            List<Integer> myList = new ArrayList<>();
            myList.add(10);
            myList.add(20);
            myList.add(30);

            // Access elements by index
            System.out.println("Element at index 1: " + myList.get(1));

            // Iterate through the list
            System.out.println("List elements:");
            for (Integer num : myList) {
                System.out.println(num);
                }
            // Create a Set of strings
            Set<String> mySet = new HashSet<>();
            mySet.add("Red");
            mySet.add("Blue");
            mySet.add("Green");

            // Check if an element is present
            System.out.println("Contains \"Blue\": " + mySet.contains("Blue"));

            // Remove an element
            mySet.remove("Red");

            // Print all elements
            System.out.println("Set elements:");
            for (String color : mySet) {
                System.out.println(color);
            }
        }
    }



