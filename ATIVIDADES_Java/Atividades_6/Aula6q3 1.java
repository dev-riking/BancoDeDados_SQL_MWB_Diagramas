import java.util.Scanner;
public class Aula6q3 {
    public static void main(String[] args) {
        int[][] agnd = new int[30][24];
        String[][] compris = new String[30][24];
        Scanner leitor = new Scanner(System.in);

        while (true) {
            System.out.println("\nESCOLHAS:");
            System.out.println("1: Inserir compromisso");
            System.out.println("2: Visualizar agenda do dia");
            System.out.println("3: Visualizar agenda completa");
            System.out.println("4: Sair");

            int op = leitor.nextInt();
            switch (op) {
                case 1:
                    System.out.println("digite um dia do mês: ");
                    int d = leitor.nextInt();
                    System.out.println("digite a hora(obs: de 0 a 23): ");
                    int h = leitor.nextInt();
                    leitor.nextLine();
                    System.out.println("seu compromisso: ");
                    String com = leitor.nextLine();
                    insC(agnd, compris, d, h, com);
                    System.out.println("compromisso agendado");
                    break;

                case 2:
                    System.out.println("qual dia deseja visualizar? ");
                    d = leitor.nextInt();
                    agD(agnd, compris, d);
                    break;

                case 3:
                    agC(agnd, compris);
                    break;

                case 4:
                    System.out.println("quit da agenda!");
                    leitor.close();
                    System.exit(0);

                default:
                    System.out.println("error!");

            }

        }

    }
        public static void insC(int[][] ag, String[][] comps, int d, int h, String com) {
	        if (d < 1 || d > 30 || h < 0 || h > 23) {
	            System.out.println("error! dia ou hora...");
	            return;

	        }
	        ag[d - 1][h] = 1;
	        comps[d - 1][h] = com;

	    }
	    public static void agD(int[][] ag, String[][] comps, int d) {
	        if (d < 1 || d > 31) {
	            System.out.println("error! dia invalido...");
	            return;

	        }
	      System.out.println("agenda do dia" + d + ":\n");
	       for(int h = 0; h < 24; h++) {
	    	   if(ag[d -1][h] == 1) {
	    		   System.out.println(String.format("%2d - %s", h, comps[d - 1][h]));
	            } else {
	                System.out.println(String.format("%2d- sem compromissos", h));  
	         }        

            }

	    }
	     public static void agC(int[][] ag, String[][] comps) {
	    	 for (int d = 0; d < 30; d++) {
	             System.out.println("\nagenda do dia " + (d + 1) + ":\n");
	             for (int h = 0; h < 24; h++) {
	                 if (ag[d][h] == 1) {
	                     System.out.println(String.format("%02d:00 - %s", h, comps[d][h]));
	                 } else {
	                     System.out.println(String.format("%02d:00 - sem compromissos", h));
	                 }
	    	 }

	     }

	    }

      }  

    