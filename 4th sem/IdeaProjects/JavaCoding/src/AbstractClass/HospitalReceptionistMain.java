package AbstractClass;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
public class HospitalReceptionistMain {
    public static void main(String[] args){
        System.out.println("Please tell me about your details and health condtion");
        Scanner sc=new Scanner(System.in);

        System.out.print("Please tell me your name:");
        String Name=sc.nextLine();
        System.out.print("What is your Address Sir/mam?:");
        String Address=sc.nextLine();
        System.out.print("What is your age?:");
        int age = sc.nextInt();
        System.out.print("What is your symptoms?: ");
//        boolean PatientDetails;
        String symptoms=sc.nextLine();
        List<HospitalReceptionist> PatientDetails = new ArrayList<>();
        HospitalReceptionist patient1= new HospitalReceptionist();
        PatientDetails.add(patient1);

    }
}
