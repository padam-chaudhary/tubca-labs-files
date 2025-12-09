package FileHandling;
import java.io.*;
import java.io.FileInputStream;

//Read file from a location and print tha location
public class FileInputStreamExample  {
    public static void main(String[] args) throws FileNotFoundException {
File file= new File("D:\\my java projects\\File Handling\\Read.txt");
        try {

//            FileInputStream fileInputStream= new FileInputStream("D:\\my java projects\\File Handling\\Read.txt");
//            FileOutputStream outputStream = new FileOutputStream("D:\\my java projects\\File Handling\\Read.txt");
            FileReader reader = new FileReader("D:\\my java projects\\File Handling\\Read.txt");



                int data;
                while ((data = reader.read()) != -1) {
                    System.out.print((char) data);
                }

                reader.close();

//            System.out.println("copied successfully");

            } catch (IOException i) {
                System.out.println("Exception handeled");
            }
        }
    }

