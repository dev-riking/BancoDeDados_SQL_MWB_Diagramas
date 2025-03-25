import java.util.Scanner;
public class Aula3q4 {

	public static void main(String[] args) {

		int n, nbot;
        
		Scanner leitor = new Scanner(System.in);
        nbot = (int) (Math.random() * 101);
		
        for (n = 1; n <= 101; n++) {

        System.out.println("escolha um número para comparação de 1 a 100: ");
        n = leitor.nextInt();

        if (nbot == n) {
         System.out.println("ENCONTRADO: "+nbot);
		 System.out.println("______________________\n");
		 break;
		}else if(nbot < n){
         System.out.println("MENOR ");
		 System.out.println("______________________\n");
		 continue;
		}else{
         System.out.println("MAIOR ");
		 System.out.println("______________________\n");
		 continue;
		}

		}
}
}




