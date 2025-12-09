package FileHandling;
import java.io.*;
public class GetFileInfo {
    public static void main(String[] args) {
        File f= new File("D:\\my java projects\\File Handling\\File.txt");
        if(f.exists()){
            System.out.println("File name:"+f.getName());//file name
            System.out.println("File location:"+f.getAbsoluteFile());//file path
            System.out.println("size of file:"+f.length());
            System.out.println(" file can Writeable?:"+f.canWrite());//boolean
            System.out.println(" file can Readable?:"+f.canRead());//boolean
            System.out.println("File Deleted:"+f.delete());

        }else {
            System.out.println("File dooesnot exists");
        }
    }
}
