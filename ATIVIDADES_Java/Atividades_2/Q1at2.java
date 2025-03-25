import java.util.Scanner;

public class Q1at2 {

    public static void main(String[] args) {

        Scanner leitor = new Scanner(System.in);

        System.out.print("Digite o salário atual do colaborador: ");
        double sl = leitor.nextDouble();

        double pa;
        double va;
        double ns;

        if ( sl <= 1280.00) {
           pa = 20.0;

        } else if (sl <= 1700.00) {
            pa = 15.0;

        } else if (sl <= 2500.00) {
           pa = 10.0;

        } else {
            pa = 5.0;

        }

        va = (pa / 100.0) * sl;
        ns = sl + va;

        System.out.println("antes do reajuste " + sl);
        System.out.println("percentual de aumento: " + pa + "%");
        System.out.println("valor de aumento " + va);
        System.out.println("novo salario " + ns);

        leitor.close();

    }

}


