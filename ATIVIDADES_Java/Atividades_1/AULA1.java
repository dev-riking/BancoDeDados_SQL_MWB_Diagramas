import java.util.Scanner;

public class AULA1 {
	
	public static void main(String[] args) {
		
		Scanner leitor = new Scanner(System.in);
		System.out.println("quanto ganha por hora: ");
		double gh = leitor.nextDouble();
		
        System.out.println("horas que trabalha: ");
        double hr = leitor.nextDouble();
        
        double sal = gh*hr;
        System.out.println("salario bruto: "+sal);
        double ir = sal*0.11;
        double inss = sal*0.08;
        double sind = sal*0.05;
        double s = ir+inss+sind;
        double sl = sal-s;
        System.out.println("imposto de renda: "+ir);
        System.out.println("inss: "+inss);
        System.out.println("sindicato: "+sind);
        System.out.println("salario liquido: "+sl);
	}

}