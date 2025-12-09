package LAB.Unit8;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class ByteStream {

    public static void main(String[] args) {
//        String inputFile = "input.txt";
//        String outputFile = "output.txt";

        try {
            FileInputStream inputStream = new FileInputStream("D:\\my java projects\\File Handling\\input.txt");
            FileOutputStream outputStream = new FileOutputStream("D:\\my java projects\\File Handling\\input.txt");

            int data;
            while ((data = inputStream.read()) != -1) {
                outputStream.write(data);
            }

            System.out.println("File copied successfully.");

            inputStream.close();
            outputStream.close();
        } catch (IOException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
}


