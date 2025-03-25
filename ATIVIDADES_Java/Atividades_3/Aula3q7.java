import java.util.Scanner;

public class Aula3q6 {

	
	public static void main(String[] args) {

        int p1, p2, n;
		Scanner leitor = new Scanner(System.in);

        System.out.println("1: homicídio\n 2: barulho\n 3: bebedeira\n 4: direção perigosa\n 5: roubo\n");

        do{

        System.out.println("digite a ocorrencia: ");
        n = leitor.nextInt();
        
        switch (n) {
        case 1:
        System.out.println("nível de gravidade alta");
        break;
        case 2, 3:
        System.out.println("nível de gravidade baixa");
        break;
        case 4, 5:
        System.out.println("nível de gravidade média");
        break;
        }

        double div = n / 2;
        
        p1 = (int) div;
        p2 = (int) div;
        }while (n != 0);
    
        System.out.println(p1);
        System.out.println(p2);
      
        
        
        leitor.close();
    }


}

 
	   

		







