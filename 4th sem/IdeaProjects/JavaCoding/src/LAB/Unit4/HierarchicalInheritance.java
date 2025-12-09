package LAB.Unit4;
class Shape {
    void draw() {
        System.out.println("Drawing a shape");
    }
}

class Square extends Shape {
    void drawSquare() {
        System.out.println("Drawing a Square");
    }
}

class Rectangle extends Shape {
    void drawRectangle() {
        System.out.println("Drawing a rectangle");
    }
}
public class HierarchicalInheritance {
    public static void main(String[] args) {
        Square mySquare = new Square();
        Rectangle myRectangle = new Rectangle();

        mySquare.draw();     // Calls the draw() method from Shape
        mySquare.drawSquare();// Calls the drawCircle() method from Circle

        myRectangle.draw();      // Calls the draw() method from Shape
        myRectangle.drawRectangle();// Calls the drawRectangle() method from Rectangle
    }
}
