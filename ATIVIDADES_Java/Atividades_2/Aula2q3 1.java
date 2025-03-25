import java.util.Scanner;

public class Aula2q3 {

	public static void main(String[] args) {
		double n1, n2;

		Scanner leitor = new Scanner(System.in);

		System.out.println("diga a fruta que você quer(frutas: 1: morango, 2: maçã, 3: laranja): ");
		n1 = leitor.nextDouble();
		System.out.println("quantos quilos em KG: ");
		n2 = leitor.nextDouble();

		double calc, calca;
		if (n1 == 1) {
			calc = n1 * n2;
			System.out.println("sua fruta: " + n1 + " morango");
			System.out.println("valor a pagar: " + calc);
			if (n2 >= 15 || calc >= 100) {
				calca = calc * 0.90;
				System.out.println("você conseguiu 10% de desconto: " + calca);
			}

		}
		if (n1 == 2) {
			calc = n1 * n2;
			System.out.println("sua fruta: " + n1 + " maçã");
			System.out.println("valor a pagar: " + calc);
			if (n2 >= 15 || calc >= 100) {
			calca = calc * 0.90;
			System.out.println("você conseguiu 10% de desconto: " + calca);
			}

		}

	}
}