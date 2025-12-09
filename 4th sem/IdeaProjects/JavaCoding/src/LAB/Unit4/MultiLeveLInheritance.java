package LAB.Unit4;
class Animal {
    void eat() {
        System.out.println("Animal is eating");
    }
}

class Dog extends Animal {
    void bark() {
        System.out.println("Dog is barking");
    }
}

class Labrador extends Dog {
    void fetch() {
        System.out.println("Labrador is fetching");
    }
}
public class MultiLeveLInheritance {
    public static void main(String[] args) {
        Labrador myLabrador = new Labrador();
        myLabrador.eat();   // Calls the eat() method from Animal
        myLabrador.bark();  // Calls the bark() method from Dog
        myLabrador.fetch(); // Calls the fetch() method from Labrador
    }
}
