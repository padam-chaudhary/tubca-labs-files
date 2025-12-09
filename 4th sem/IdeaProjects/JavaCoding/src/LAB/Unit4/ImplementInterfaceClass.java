package LAB.Unit4;
// Define an interface called "Drawable"
interface Draw {
    void draw(); // Abstract method (no method body)
}

// Create a class "Rectangle" that implements the "Drawable" interface
class Triangle implements Draw {
    @Override
    public void draw() {
        System.out.println("Drawing a Triangle");
    }
}

// Create another class "Circle" that also implements the "Drawable" interface
class Circle implements Draw {
    @Override
    public void draw() {
        System.out.println("Drawing a circle");
    }
}
public class ImplementInterfaceClass {
    public static void main(String[] args) {
        // Create objects of Rectangle and Circle
        Triangle myRectangle = new Triangle();
        Circle myCircle = new Circle();

        // Call the draw() method for both objects
        myRectangle.draw();
        myCircle.draw();
    }
}
