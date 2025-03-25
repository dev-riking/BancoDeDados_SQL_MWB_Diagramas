import java.util.Scanner;
public class Aula7q1 {
    public static void main(String[] args) {
       
        Scanner leitor = new Scanner(System.in);

        while (true) {
            System.out.print("nome completo, zero para sair: ");
            String nc = leitor.nextLine();

            if (nc.equals("0")) {
                break;
            }

            System.out.print("CPF do usuario: ");
            String cpf = leitor.nextLine();

            String credenciala = gerarca(nc, cpf);
            System.out.println("credencial de acesso: " + credenciala);
        }
        leitor.close();
    }

    public static String gerarca(String nc, String cpf) {        
        String[] pn = nc.split(" ");
        
        if (pn.length < 2) {
            return "nome incompleto";
        }
        
        String primeiron = pn[0].toLowerCase();
        String segundon = pn[1].toLowerCase();
        String cpf3 = cpf.substring(0, 3);
       
        String credenciala = primeiron + "." + segundon + "." + cpf3;

        return credenciala;
	    }

      }  

    