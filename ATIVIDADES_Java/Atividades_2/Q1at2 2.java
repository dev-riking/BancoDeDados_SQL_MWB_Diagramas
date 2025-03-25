import java.util.Scanner;

public class Q1at2 {

 public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        System.out.println("digite 1 para sim e 0 para não");
        int n1;
        int n2;
        int n3;
        int n4;
        int n5;

        System.out.print("Telefonou para a vítima? ");
         n1 = leitor.nextInt();
        System.out.print("Esteve no local do crime? ");
         n2 = leitor.nextInt();
        System.out.print("Mora perto da vítima? ");
         n3 = leitor.nextInt(); 
        System.out.print("Devia para a vítima? ");
         n4 = leitor.nextInt();
        System.out.print("Já trabalhou com a vítima? ");
         n5 = leitor.nextInt();

        int n6 = n1 + n2 + n3 + n4 + n5;

         if (n6 == 1) { 
          System.out.print("INOCENTE! ");
         }else{

         }
         if (n6 == 0) {
            System.out.print("INOCENTE! ");
         }else{
          
         } 

         if (n6 == 2) { 
          System.out.print("SUSPEITA! ");
         }else{
         
         }

          if (n6 == 3) {
          System.out.print("CUMPLICE!"); 
          }else{

          }

          if (n6 == 4) {
            System.out.print("CUMPLICE!");
          }else{
          
          }

         if (n6 == 5) { 
          System.out.print("CRIMINOSO! ");
         }else{
         
         }

}

} 