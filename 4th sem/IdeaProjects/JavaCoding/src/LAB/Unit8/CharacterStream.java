package LAB.Unit8;
import java.io.*;
public class CharacterStream {

        public static void main(String[] args) {
//            String inputFile = "input.txt";
//            String outputFile = "output.txt";

            try {
                FileReader reader = new FileReader("D:\\my java projects\\File Handling\\input.txt");
                FileWriter writer = new FileWriter("D:\\my java projects\\File Handling\\input.txt");

                int data;
                while ((data = reader.read()) != -1) {
                    writer.write(data);
                }

                System.out.println("File copied successfully.");

                reader.close();
                writer.close();
            } catch (IOException e) {
                System.err.println("Error: " + e.getMessage());
            }
        }
    }


