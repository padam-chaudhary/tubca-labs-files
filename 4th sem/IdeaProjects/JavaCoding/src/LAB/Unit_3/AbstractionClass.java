package LAB.Unit_3;
abstract class Language {
    // Abstract method (no method body)
    abstract void speak();

    // Regular method with implementation
    void display() {
        System.out.println("This is a language");
    }
}

// Concrete subclass that extends the abstract class
class English extends Language {

    void speak() {
        System.out.println("I speak English");
    }
}
public class AbstractionClass {
    public static void main(String[] args) {
        English english = new English();
        english.display(); // Calls the regular method
        english.speak();   // Calls the abstract method
    }
}
