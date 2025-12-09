package LAB.Unit10;
import java.util.*;
public class HashSetAndTreeSet {


        public static void main(String[] args) {
            // Using HashSet
            Set<Integer> hashSet = new HashSet<>();
            hashSet.add(8);
            hashSet.add(2);
            hashSet.add(1);
//            hashSet.add();
//            hashSet.add();

            System.out.println("Elements in HashSet:");
            for (int element : hashSet) {
                System.out.print(element);
            }

//            // Using TreeSet
//            Set<Integer> treeSet = new TreeSet<>();
//            treeSet.add(10);
//            treeSet.add(11);
//            treeSet.add(12);
////            treeSet.add("Mango");
////            treeSet.add("Grapes");
//
//            System.out.println("\nElements in TreeSet (sorted):");
//            for (int element : treeSet) {
//                System.out.println(element);
//            }

            // Sorting and displaying integers using TreeSet
            Set<Integer> intTreeSet = new TreeSet<>();
            intTreeSet.add(5);
            intTreeSet.add(2);
            intTreeSet.add(9);
//            intTreeSet.add(1);
//            intTreeSet.add(7);

            System.out.println("\nElements in Integer TreeSet (sorted):");
            for (int num : intTreeSet) {
                System.out.print(num);
            }
        }
    }


