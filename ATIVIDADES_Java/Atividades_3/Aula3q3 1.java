import java.util.Scanner;

public class Aula3q3 {

	public static void main(String[] args) {

		int cont1=0, cont2=0, cont3=0, cont4=0, v;
        
		Scanner leitor = new Scanner(System.in);

		System.out.println("__________________________\n");
		System.out.println("MENU DE VOTAÇÃO");
		System.out.println("__________________________\n");
		System.out.println(" 0 - FINALIZAR VOTAÇÃO\n 1 - JUNIN DA QUEBRADA\n 2 - ROBERTIN DO VALE\n 3 - VOTO EM BRANCO\n 4 - VOTO NULO");
		System.out.println("__________________________\n");

		do {

        System.out.println("DIGITE SEU VOTO: ");
	    v = leitor.nextInt();

		if (v == 0) {
			System.out.println("VOTAÇÃO FINALIZADA");
		
		}else {
			
		 switch (v) {
		 case 1: 
		 cont1++;	

		 break;	
		 case 2:
		 cont2++;	
		 
		 break;		
		 case 3:
		 cont3++;	
		 
		 break;		
		 case 4:
		 cont4++;
		 
		 break;	
		 default:
		 System.out.println("NÚMERO INEXISTENTE");
		 break; 

		 }
		}

	}while (v != 0);
	    System.out.println("__________________________\n");
	    System.out.println("TOTAL DE VOTOS: "+(cont1+cont2+cont3+cont4));
		System.out.println("JUNIN DA QUEBRADA tem "+cont1+" votos.");
		System.out.println("ROBERTIN DO VALE tem "+cont2+" votos.");
		System.out.println("VOTOS EM BRANCO "+cont3);
		System.out.println("VOTOS NULOS "+cont4);
		leitor.close();
	
		if (cont1 == cont2) {
			System.out.println("OCORREU UM EMPATE E HAVERÁ SEGUNDO TURNO");

		}else if (cont1 > cont2){
           System.out.println("JUNIN DA QUEBRADA VENCEU A ELEIÇÃO");

		}else{
           System.out.println("ROBERTIN DO VALE VENCEU A ELEIÇÃO");
		}
		System.out.println("__________________________"); 
}
	}
