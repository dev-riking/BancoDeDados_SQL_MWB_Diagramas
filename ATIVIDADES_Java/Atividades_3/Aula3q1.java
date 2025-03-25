import java.util.Scanner;

public class Aula3q1 {

	public static void main(String[] args) {
		
	   int n, n1, n2;
		
	Scanner leitor = new Scanner(System.in);
	
	
	System.out.println("numero para tabuada: ");
	n = leitor.nextInt();
	
	System.out.println("digite um valor para iniciar: ");
	n1 = leitor.nextInt();
	
	System.out.println("digite um valor para finalizar: ");
	n2 = leitor.nextInt();
	
	System.out.println("SOMA");
	for (int i=n1; i<=n2; i++) {
		System.out.println(n + " + " + i + " = " + (n + i));
	}
	
	System.out.println("SUBTRAÇÃO");
	for (int i=n1; i<=n2; i++) {
		System.out.println(n + " - " + i + " = " + (n - i));
	}
	
	System.out.println("MULTIPLICAÇÃO");
	for (int i=n1; i<=n2; i++) {
		System.out.println(n + " * " + i + " = " + (n * i));
	}
	
	System.out.println("DIVISÃO");
	for (double i=n1; i<=n2; i++) {
		System.out.println(n + " / " + i + " = " + (n / i));
	} 
			
		}
		

	}
