import java.util.Scanner;

public class Aula3q2 {

	public static void main(String[] args) {
		
	Scanner leitor = new Scanner(System.in);
	
	System.out.println("valor da compra: ");
	int vldc = leitor.nextInt();
	double desc=0;
	
	if (vldc <= 500) {
		System.out.println("sem desconto");	
		
	}else{
	  	  
	for (int i=500; i<=vldc; i=i+100) {
		
		desc = desc + 1;
		
		if (desc == 25) {
			System.out.println("");		
		    break;
		}
	}
	
	System.out.println("valor da compra: " + vldc);
	}
	
	if (desc < 25) {
	System.out.println("desconto de: " + (int) desc + "%");
	 }
	
	double divi = (desc / 100);
	double vaf = vldc - (vldc * divi);
	System.out.println("valor final: " + vaf);
	System.out.println("porcentagem: " + desc + "%");
	}
}