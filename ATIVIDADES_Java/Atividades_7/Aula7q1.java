import java.util.Scanner;
public class Aula7q1 {
    public static void main(String[] args) {
       
        Scanner leitor = new Scanner(System.in);

        System.out.print("LOGIN: ");
        String l = leitor.nextLine();

        System.out.print("SENHA: ");
        String s = leitor.nextLine();
        
        boolean lv = vl(l);
        boolean sv = vs(s);
        
        if (lv && sv) {
            System.out.println("dados validos!");
        } else {
            System.out.println("dados invalidados!");
        }
        leitor.close();
    }
   
    
    public static boolean vl(String l) {
        return l.length() >= 10 && l.startsWith("senac"); 
    }

    
    public static boolean vs(String s) {
        boolean cl = false;
        boolean cn = false;

        if (s.length() > 8) {
            for (char c : s.toCharArray()) {
                if (Character.isLetter(c)) {
                    cl = true;
                } else if (Character.isDigit(c)) {
                    cn = true;
                }
            }
        }

        return cl && cn;
	    }

      }  

    