package LAB.Unit8;
import java.io.*;
public class ReadWriteNumericData {
        public static void main(String[] args) {
            String inputFile = "input.txt";
            String outputFile = "output.txt";

            try (BufferedReader reader = new BufferedReader(new FileReader("D:\\my java projects\\File Handling\\input.txt"));
                 BufferedWriter writer = new BufferedWriter(new FileWriter("D:\\my java projects\\File Handling\\output.txt"))) {

                String line;
                while ((line = reader.readLine()) != null) {
                    try {
                        int number = Integer.parseInt(line);
                        int square = number * number;
                        writer.write(String.valueOf(square));
                        writer.newLine();
                    } catch (NumberFormatException e) {
                        System.err.println("Error: Invalid number format in the input file.");
                    }
                }

                System.out.println("Squares of numbers written to " + outputFile);

            } catch (IOException e) {
                System.err.println("Error: " + e.getMessage());
            }
        }
    }


