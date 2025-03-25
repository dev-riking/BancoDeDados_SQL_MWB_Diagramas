import java.util.Random;

public class Aula5q1 {
    public static void main(String[] args) {
        int[][] matriz = new int[5][5];
        int n, n2, l, i, j;
        boolean nr;
        Random random = new Random();

        for (i = 0; i < 5; i++) {
            for (j = 0; j < 5; j++) { 

                do {
                    n = random.nextInt(100);
                    nr = false;

                    for (n2 = 0; n2 < i; n2++) {
                     for (l = 0; l < 5; l++) {
                        if (matriz[n2][l] == n) {
                            nr = true;
                            break;
                            }
                        }
                    }
                } while (nr);

                matriz[i][j] = n;
            }
        }
        System.out.println("\nCARTELA DE BINGO\n");
        for (i = 0; i < 5; i++) {
            for (j = 0; j < 5; j++) {
                System.out.printf("%2d ", matriz[i][j]);
            }
            System.out.println();
        }
    }
}