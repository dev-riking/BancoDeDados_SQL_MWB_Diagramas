import java.util.Scanner;

public class Aula3q6 {

	
	public static void main(String[] args) {

		Scanner leitor = new Scanner(System.in);

	    System.out.print("digite uma palavra: ");
        String n2 = "";
		String n1 = leitor.nextLine().toUpperCase().replace(" ", "").strip();

        for (int n = n1.length() - 1; n >= 0; n--) {
            n2 += n1.charAt(n);

        }

        System.out.println(n1);
        System.out.println(n2);

        if(n1.equals(n2)) {
            System.out.println("políndromo");

        }

        else {
            System.out.println("não políndromo");

        }
        leitor.close();
    }


}

 
	   

		







