import java.util.Scanner;
public class StringPalindrom {




        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
            System.out.print("Enter a string: ");
            String inputString = scanner.nextLine();

            if (isPalindrome(inputString)) {
                System.out.println(inputString + " is a palindrome.");
            } else {
                System.out.println(inputString + " is not a palindrome.");
            }

            scanner.close();
        }

        public static boolean isPalindrome(String str) {
            int left = 0;
            int right = str.length() - 1;

            while (left < right) {
                // Move the left and right pointers towards the center
                if (str.charAt(left) != str.charAt(right)) {
                    return false; // Characters don't match
                }
                left++;
                right--;
            }

            return true; // All characters matched
        }
    }


