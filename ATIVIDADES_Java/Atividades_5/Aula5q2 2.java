import java.util.Scanner;

public class Aula5q2 {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
     
        System.out.print("digite o tamanho do quadrado mágico: ");
        int n = leitor.nextInt();

        int[][] matriz = new int[n][n];

        System.out.println("digite a matriz:");
        
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                matriz[i][j] = leitor.nextInt();
            }
        }

        System.out.println("Matriz:");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print(matriz[i][j] + " ");
            }
            System.out.println();
        }
        
        boolean qm = vqm(matriz, n);
        
        if (qm) {
            System.out.println("quadrado mágico");
        } else {
            System.out.println("não é quadrado mágico");
        }

        leitor.close();
    }

    public static boolean vqm(int[][] matriz, int n) {

        int dsp = 0;
        int dss = 0;
        for (int i = 0; i < n; i++) {
            dsp = dsp + matriz[i][i];
            dss = dss + matriz[i][n - i - 1];
        }
        
        if (dsp != dss) {
            return false;

        }
        
        for (int i = 0; i < n; i++) {
        int sl = 0;
        int sc = 0;
            for (int j = 0; j < n; j++) {
                sl+= matriz[i][j];
                sc += matriz[j][i];
            }

            if (sl != dsp || sc != dsp) {
                return false;
            }
        }

        return true;
    }
}