import java.util.Scanner;

public class Q1at2 {

 public static void main(String[] args) {

        Scanner leitor = new Scanner(System.in);

        System.out.print("nota 1: ");
        double n1 = leitor.nextDouble();
        System.out.print("nota 2: ");
        double n2 = leitor.nextDouble();

        double calc = n1 + n2;
        double calc1 = calc/2;
        
        if (calc1 >= 9.0) {
         if (calc1 <= 10.0) {
           System.out.println("seu conceito foi A");
           System.out.println("APROVADO!");    
         }else{
           System.out.print("");
         }
        }else{
           System.out.print("");
         
     }

        if (calc1 >= 7.5) {
         if (calc1 < 9.0) {
           System.out.println("seu conceito foi B"); 
           System.out.println("APROVADO!");    
         }else{
           System.out.print("");
         }
        }else{
           System.out.print("");
         
     }

        if (calc1 >= 6.0) {
         if (calc1 < 7.5) {
           System.out.println("seu conceito foi C"); 
           System.out.println("REPROVADO!");    
         }else{
           System.out.print("");
         }
        }else{
           System.out.print("");
         
     }
      
        if (calc1 >= 4.0) {
         if (calc1 < 6.0) {
           System.out.println("seu conceito foi D");
           System.out.println("REPROVADO!");    
         }else{
           System.out.print("");
         }
        }else{
           System.out.print("");
         
     }
      
        if (calc1 >= 0.0) {
         if (calc1 < 4.0) {
           System.out.println("seu conceito foi E"); 
           System.out.println("REPROVADO!");    
         }else{
           System.out.print("");
         }
        }else{
           System.out.print("");
         
     }

     System.out.println("SUA PRIMEIRA NOTA: " + n1);
     System.out.println("SUA SEGUNDA NOTA: " + n2); 
     System.out.println("SUA MÉDIA: " + calc1); 
}

} 