package LAB.Unit4;
class Vehicle {
    void start() {
        System.out.println("Vehicle started");
    }
}

class Car extends Vehicle {
    void drive() {
        System.out.println("Car is driving");
    }
}
public class SingleLeveLInheritance {
    public static void main(String[] args) {
        Car myCar = new Car();
        myCar.start(); // Calls the start() method from Vehicle
        myCar.drive(); // Calls the drive() method from Car
    }
}
