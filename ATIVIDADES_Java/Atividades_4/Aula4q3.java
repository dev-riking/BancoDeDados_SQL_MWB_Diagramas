import java.util.Scanner;

public class Aula4q3 {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        String[] nomesc = new String[50];
        String[] est = new String[50];
        int[] veicp = new int[50];
        int[] acv = new int[50];

        int mai = 0;
        int mei = Integer.MAX_VALUE;
        String cmai = "";
        String cmei = "";
        double medv = 0.0;
        double medacrn = 0.0;
        int tv = 0;
        int totarn = 0;
        int crn = 0;

        System.out.println("Digite os dados das 50 cidades:");

        for (int i = 0; i < 50; i++) {
            System.out.println("Cidade " + (i + 1) + ":");
            System.out.print("Nome da cidade: ");
            nomesc[i] = leitor.next();
            System.out.print("Estado: ");
            est[i] = leitor.next();
            System.out.print("Número de veículos de passeio em 2022: ");
            veicp[i] = leitor.nextInt();
            System.out.print("Número de acidentes de trânsito com vítimas em 2022: ");
            acv[i] = leitor.nextInt();

            if (acv[i] > mai) {
                mai = acv[i];
                cmai = nomesc[i];
            }
            if (acv[i] < mei) {
                mei = acv[i];
                cmei = nomesc[i];
            }

            tv += veicp[i];

            if (est[i].equalsIgnoreCase("RN")) {
                totarn += acv[i];
                crn++;
            }
        }

        medv = (double) tv / 50;
        medacrn = (double) totarn / crn;

        System.out.println("maior índice de acidentes foi: " + mai + " em " + cmai);
        System.out.println("menor índice de acidentes foi: " + mei + " em " + cmei);
        System.out.println("média de veículos nas cidades do brasil: " + medv + ".");
        System.out.println("média de acidentes com vítimas em cidades do rn: " + medacrn);

        leitor.close();
    }
}
