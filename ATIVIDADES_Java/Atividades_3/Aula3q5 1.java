import java.util.Scanner;
public class Aula3q5 {

	
	public static void main(String[] args) {

		Scanner leitor = new Scanner(System.in);

		int cod;
        double alt, pes;
        int cma = 0, cmb = 0, cmg = 0, cmm = 0;
        double ama = 0, amb = Double.MAX_VALUE;
        double pmg = 0, pmm = Double.MAX_VALUE;
        double sa = 0, sp = 0;
        int c = 0;

        while (true) {
            System.out.print("código (0 para encerrar): ");
            cod = leitor.nextInt();

            if (cod == 0) {
                break;
            }

            System.out.print("altura: ");
            alt = leitor.nextDouble();
            System.out.print("peso: ");
            pes = leitor.nextDouble();
            sa = sa + alt; 
            sp += pes;
            c++;

            if (alt > ama) {
                ama = alt;
                cma = cod;

            }

            if (alt < amb) {
                amb = alt;
                cmb = cod;

            }

            if (pes > pmg) {
                pmg = pes;
                cmg = cod;

            }

            if (pes < pmm) {
                pmm = pes;
                cmm = cod;

            }

        }

        if (c > 0) {

            double ma = sa / c;
            double mp = sp / c;

            System.out.println("código mais alto: " + cma); 
			System.out.println("altura: " + ama);

            System.out.println("código mais baixo: " + cmb);
			System.out.println("altura: " + amb);

            System.out.println("código mais gordo: " + cmg);
			System.out.println("peso: " + pmg);
			
			System.out.println("código mais magro: " + cmm);
			System.out.println("peso: " + pmm);

            System.out.println("média das alturas: " + ma);
            System.out.println("média dos pesos: " + mp);

        } else {

            System.out.println("ERROR");
        }

        leitor.close();

    }

}

 
	   

		







