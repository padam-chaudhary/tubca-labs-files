package LAB.Unit6;
public class StringMethods{
    public static void main(String[] args) {
        // Create a sample string
        String str = " Hello, World! ";

        // 1. length() - get the length of the string
        int length = str.length();
        System.out.println("Length: " + length);

        // 2. charAt() - get the character at a specific index
        char charAtFive = str.charAt(5);
        System.out.println("Character at index 5: " + charAtFive);

        // 3. substring() - get a substring from the string
        String substring = str.substring(7, 12);
        System.out.println("Substring (7, 12): " + substring);

        // 4. concat() - concatenate two strings
        String concatenated = str.concat(" How are you?");
        System.out.println("Concatenated String: " + concatenated);

        // 5. equals() - compare two strings for equality
        boolean equals = str.equals(" Hello, World! ");
        System.out.println("Equals ' Hello, World! ': " + equals);

//        // 6. equalsIgnoreCase() - compare two strings for equality ignoring case
//        boolean equalsIgnoreCase = str.equalsIgnoreCase(" hello, world! ");
//        System.out.println("Equals Ignore Case ' hello, world! ': " + equalsIgnoreCase);

        // 7. toUpperCase() - convert to uppercase
        String upperCase = str.toUpperCase();
        System.out.println("Uppercase: " + upperCase);

        // 8. toLowerCase() - convert to lowercase
        String lowerCase = str.toLowerCase();
        System.out.println("Lowercase: " + lowerCase);

        // 9. replace() - replace characters in the string
        String replaced = str.replace("World", "Java");
        System.out.println("Replaced 'World' with 'Java': " + replaced);

        // 10. trim() - trim leading and trailing whitespace
        String trimmed = str.trim();
        System.out.println("Trimmed: '" + trimmed + "'");

//        // 11. contains() - check if the string contains a sequence of characters
//        boolean contains = str.contains("World");
//        System.out.println("Contains 'World': " + contains);

        // 12. indexOf() - find the index of a character or substring
        int indexOfW = str.indexOf('W');
        System.out.println("Index of 'W': " + indexOfW);

        // 13. split() - split the string into an array based on a delimiter
        String[] splitArray = str.split(", ");
        System.out.println("Split by ', ':");
        for (String s : splitArray) {
            System.out.println(s);
        }

//        // 14. startsWith() - check if the string starts with a specific prefix
//        boolean startsWith = str.startsWith(" Hello");
//        System.out.println("Starts with ' Hello': " + startsWith);
//
//        // 15. endsWith() - check if the string ends with a specific suffix
//        boolean endsWith = str.endsWith("! ");
//        System.out.println("Ends with '! ': " + endsWith);
    }
}



