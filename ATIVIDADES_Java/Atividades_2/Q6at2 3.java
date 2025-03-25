import java.util.Scanner;

public class Q6at2 {

	public static void main(String[] args) {
        double n1, n2;
		int esc, esc1, esc2;
		double soma, sub, mult, divi, raiz, po, sin, cos, tan;

		Scanner leitor = new Scanner(System.in);
        System.out.println(" 1: clássica, 2: avançada");
        esc1 = leitor.nextInt();

	   switch (esc1) {
	   case 1: 
		System.out.println(" 1: soma\n 2: subtração\n 3: multiplicação\n 4: divisão");
        esc = leitor.nextInt();
		System.out.print("denominador\n");
		n1 = leitor.nextDouble();
        System.out.print("numerador\n");
        n2 = leitor.nextDouble();
       
		if (n1 == 0) {
		System.out.println("ERROR");	
		}else{

         switch (esc) {
		 case 1:
		  soma = n1 + n2;
		  System.out.println("resultado da soma: " + soma);
		 break;
		 case 2: 
		  sub = n1 - n2;
		  System.out.println("resultado da subtração: " + sub);
         break;
		 case 3:
		  mult = n1 * n2;
		  System.out.println("resultado da multiplição: " + mult);
		 break;
		 case 4: 
		  divi = n1 / n2;
		  System.out.println("resultado da divisão: " + divi);
         break;
		 default:
		  System.out.println("sem calculo");
		 break;
		    
		}
	}

		case 2: 
		System.out.println(" 1: raiz quadrada\n 2: potenciação\n 3: trigonometria");
        esc = leitor.nextInt();
		 switch (esc) {
		 case 1:
			System.out.print("número para raiz quadrada\n");
		    n1 = leitor.nextDouble();
			raiz = Math.sqrt(n1);
			System.out.println("raiz quadrada: "+raiz);
     	 break;
		 case 2:
			System.out.print("Informe a base\n");
		    n1 = leitor.nextDouble();
			System.out.print("Informe o expoente\n");
		    n2 = leitor.nextDouble();
			po = Math.pow(n1, n2);
			System.out.println("potencia: "+po);
		 break;
		 case 3:
			System.out.println(" 1: seno\n 2: cosseno\n 3: tangente");
            esc2 = leitor.nextInt();

			switch (esc2){
			case 1:
			   System.out.print("numero para calcular seno\n");
		       n1 = leitor.nextDouble();
			   sin = Math.sin(Math.toRadians(n1));
			   System.out.println("seno: "+sin);
			 break;
			 case 2:
			   System.out.print("numero para calcular cosseno\n");
		       n1 = leitor.nextDouble();
			   cos = Math.cos(Math.toRadians(n1));
			   System.out.println("cosseno: "+cos);
			 break;
             case 3:
			   System.out.print("numero para calcular tangente\n");
		       n1 = leitor.nextDouble();
			   tan = Math.tan(Math.toRadians(n1));
			   System.out.println("tangente: "+tan);
			 break;
		     default:
		       System.out.println("ERROR!");
			 break;
		 
			}
		
			}

		}

		leitor.close();
	}
		
         
           
}

