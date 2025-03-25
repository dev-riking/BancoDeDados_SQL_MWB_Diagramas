import java.util.Scanner;

public class Aula2q3 {

	public static void main(String[] args) {
		int cont100 = 0, cont50 = 0, cont20 = 0, cont10 = 0, cont5 = 0, cont2 = 0;

		Scanner leitor = new Scanner(System.in);

		System.out.print("digite o valor do saque: ");
		double n1 = leitor.nextDouble();

		if (n1 >= 100) {
			cont100 = (int) n1 / 100;
			n1 = n1 - (cont100 * 100);
		}

		if (n1 >= 50) {
			cont50 = (int) n1 / 50;
			n1 = n1 - (cont50 * 50);
		}
		if (n1 >= 20) {
			cont20 = (int) n1 / 20;
			n1 = n1 - (cont20 * 20);
		}

		if (n1 >= 10) {
			cont10 = (int) n1 / 10;
			n1 = n1 - (cont10 * 10);
		}
		if (n1 >= 5) {
			cont5 = (int) n1 / 5;
			n1 = n1 - (cont5 * 5);
		}

		if (n1 >= 2) {
			cont2 = (int) n1 / 2;
			n1 = n1 - (cont2 * 2);
		}
		if (n1 == 1) {
			
		}
		

		if (cont100 > 0) {
			System.out.println("notas de 100: " + cont100);
		}

		if (cont50 > 0) {
			System.out.println("notas de 50: " + cont50);
		}
		if (cont20 > 0) {
			System.out.println("notas de 20: " + cont20);
		}

		if (cont10 > 0) {
			System.out.println("notas de 10: " + cont10);
		}
		if (cont5 > 0) {
			System.out.println("notas de 5: " + cont5);
		}
		if (cont2 > 0) {
			System.out.println("notas de 2: " + cont2);
		}
	}
}