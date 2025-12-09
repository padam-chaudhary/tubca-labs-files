package ClassAndobject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

class Fruit {
    private String name;
    private double price;

    public Fruit(String name, double price) {
        this.name = name;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }
}

public class FruitsList {
    public static void main(String[] args) {
        List<Fruit> fruits = new ArrayList<>();

        // Add fruits to the list
        fruits.add(new Fruit("Banana", 5.00));
        fruits.add(new Fruit("Mango", 20.00));
        fruits.add(new Fruit("Apple", 15.00));
        fruits.add(new Fruit("Papaya", 25.00));
        fruits.add(new Fruit("Guava", 15.00));

        // Find the price of a specific fruit (e.g., "Mango")
        String desiredFruitName = "Mango";
        System.out.println("No bargenniung fixed price");
        double desiredFruitPrice = findFruitPrice(fruits, desiredFruitName);
        System.out.println(desiredFruitName + " price: $" + desiredFruitPrice);

        // Sort fruits by price (ascending order)
        Collections.sort(fruits, Collections.reverseOrder( Comparator.comparingDouble(Fruit::getPrice)));

        // Print the sorted list
        System.out.println("\nSorted fruits by price:");
        for (Fruit fruit : fruits) {
            System.out.println(fruit.getName() + ": $" + fruit.getPrice());
        }
    }

    private static double findFruitPrice(List<Fruit> fruits, String fruitName) {
        for (Fruit fruit : fruits) {
            if (fruit.getName().equalsIgnoreCase(fruitName)) {
                return fruit.getPrice();
            }
        }
        return -1.0; // Fruit not found
    }
}


