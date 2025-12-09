package FileHandling;
import java.io.*;
public class createFile {
    public static void main(String[] args) throws IOException {
        File f= new File("D:\\my java projects\\File Handling\\File.txt");
//        try {
            if (f.createNewFile()) {
                System.out.println("File successfully created.....!");
            } else {
                System.out.println(" File Already Exixts");
            }
//        }catch(IOException i){
//            System.out.println("Exception handled");
//        }
    }
}
