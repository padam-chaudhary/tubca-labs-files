package LAB.Unit9;
import java.util.*;
public class HashTableAndEnumeration {

        public static void main(String[] args) {
            Hashtable<String, String> ht = new Hashtable<>();
            ht.put("Name", "Rohan");
            ht.put("Age", "23");
            ht.put("Address", "India");
            ht.put("Article", "GeeksforGeeks");

            Enumeration<String> keys = ht.keys();
            while (keys.hasMoreElements()) {
                String key = keys.nextElement();
                System.out.println(key + ": " + ht.get(key));
            }
        }
    }


