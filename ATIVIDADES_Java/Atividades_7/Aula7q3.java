import java.util.Scanner;
public class Aula7q3 {
    public static void main(String[] args) {
       
        Scanner leitor = new Scanner(System.in);

         System.out.print("digite algo: ");
         String i = leitor.nextLine();
 
         int numc = i.length();
         String frm = i.toUpperCase();
         int numv = contarVogais(i);
         boolean cse = frm.startsWith("SE");
         boolean tnac = frm.endsWith("NAC");
         int numd = contarDigitos(i);

         System.out.println("Número de caracteres: " + numc);
         System.out.println("Frase em maiúsculas: " + frm);
         System.out.println("Número de vogais: " + numv);
         System.out.println("Começa com 'SE': " + cse);
         System.out.println("Termina com 'NAC': " + tnac);
         System.out.println("Número de dígitos: " + numd);
 
         leitor.close();
     }
     public static int contarVogais(String i) {
         String v = "AEIOUaeiou";
         int cont = 0;
 
         for (char c : i.toCharArray()) {
             if (v.indexOf(c) != -1) {
                 cont++;
             }
         }
 
         return cont;
     }
     public static int contarDigitos(String i) {
         int cont = 0;
         for (char c : i.toCharArray()) {
             if (Character.isDigit(c)) {
                 cont++;
             }
         }
 
         return cont;
	    }

      }  

    