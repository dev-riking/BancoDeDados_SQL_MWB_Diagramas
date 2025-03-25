import java.util.Scanner;
import java.util.Random;

public class Aula5q3 {
    public static void main(String[] args) {            
        int[][] matriz = new int[15][10];
        Random al = new Random();

        int tp = 150;
        int oc = 0;
        int inti = 0;
        int m = 0;
        double vt = 0;
        double vi = 0;
        double vm = 0;

        for (int i = 0; i < 15; i++) {
            for (int j = 0; j < 10; j++) {
                matriz[i][j] = al.nextInt(3); 

                if (matriz[i][j] != 0) {
                    oc++;
                    if (matriz[i][j] == 1) {
                        inti++;
                        vt = vt + 30.0;
                        vi = vi + 30.0;
                    } else if (matriz[i][j] == 2) {
                        m++;
                        vt = vt + 15.0;
                        vm = vm + 15.0;
                    }
                }
            }
        }
        
        System.out.println("poltronas");
        for (int i = 0; i < 15; i++) {
            for (int j = 0; j < 10; j++) {
                System.out.print(matriz[i][j]);
            }
            System.out.println();
        }

        System.out.println("poltronas: " + tp);
        System.out.println("poltronas ocupadas: " + oc);
        System.out.println("inteiras: " + inti);
        System.out.println("meias: " + m);
        System.out.println("valor apurado em reais: " + vt);
        System.out.println("valor de inteiras em reais: " + vi);
        System.out.println("valor das meias em reais: " + vm);

        
    }
}