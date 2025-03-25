import java.util.Scanner;

public class AULA1 {
    public static void main(String[] args) {

        Scanner leitor = new Scanner (System.in);
        System.out.println("area a ser pintada: ");
        double ap = leitor.nextInt();
        
        double qt = (ap * 1.10) / 6.0;
        int lt18 = (int) Math.ceil(qt / 18.0);
        double plt18 = lt18 * 80.0;
        int gl36 = (int) Math.ceil(qt / 3.6);
        double pgl36 = gl36 * 25.0;
        int lm = (int) qt / 18;
        int glm = (int) Math.ceil((qt % 18) / 3.6);
       
        
        double pm = (lm * 80.0) + (glm * 25.0);
        
        
        System.out.println("quantidade necessaria: \n" + qt);
        System.out.println("latas de 18 litros: \n" + lt18 + plt18);
        System.out.println("galões de 3,6 litros: \n" + gl36 + pgl36);
        System.out.println("Misturar latas e galões: \n" + lm + pm + glm);
        
        
    }
}
