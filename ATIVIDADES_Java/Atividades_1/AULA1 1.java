import java.util.Scanner;

public class AULA1 {
    public static void main(String[] args) {

        Scanner leitor = new Scanner (System.in);
        System.out.println("primeiro numero");
        int n1 = leitor.nextInt();
        
        System.out.println("segundo numero");
        int n2 = leitor.nextInt();

        System.out.println("terceiro numero");
        double n3 = leitor.nextDouble();

        double mult = (2 * n1) * (n2 / 2);
        System.out.printf("produto: %.2f\n", mult);
      
        double som  = (3 * n1) + n3; 
        System.out.printf("soma: %.2f\n", som);

        double po  = Math.pow(n3, 3); 
        System.out.printf("potencia: %.2f", po);
        
    }
}
