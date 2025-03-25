import java.util.Scanner;

public class Aula4q1 {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        System.out.print("Digite a quantidade de atletas na competição: ");
        int qa = leitor.nextInt();

        String v = "";
        double mm = -1;

        for (int i = 1; i <= qa; i++) {
            System.out.print("digite o nome do ginasta: ");
            String nome = leitor.next();

            double[] notas = new double[7];

            for (int j = 0; j < 7; j++) {
                System.out.print("digite a nota do jurado " + (j + 1) + ": ");
                notas[j] = leitor.nextDouble();
            }

            double man = notas[0];
            double men = notas[0];

            for (int j = 1; j < 7; j++) {
                if (notas[j] > man) {
                    man = notas[j];
                }
                if (notas[j] < men) {
                    men = notas[j];
                }
            }

            double soma = 0;

            for (int j = 0; j < 7; j++) {
                soma += notas[j];
            }
            double med = (soma - (man + men)) / 5;
            System.out.println();
            System.out.println("o ginasta " + nome + " tem média: " + med);

            if (med > mm) {
                mm = med;
                v = nome;
            }
        }
        System.out.println();
        System.out.println("o campeão é: " + v + " com a média de: " + mm);

        leitor.close();
    }
}