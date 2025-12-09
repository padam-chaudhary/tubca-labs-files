package LAB.Unit_3;
class ProgrammingLanguage {
    public void displayInfo() {
        System.out.println("Common English Language");
    }
}
class Java extends ProgrammingLanguage {
    @Override
    public void displayInfo() {
        System.out.println("Java Programming Language");
    }
}
public class OverridingMethod {
    public static void main(String[] args) {
        ProgrammingLanguage language = new Java(); // Polymorphism: reference of superclass, object of subclass
        language.displayInfo(); // Calls the overridden method in Java
        // Output: "Java Programming Language"
    }
}
