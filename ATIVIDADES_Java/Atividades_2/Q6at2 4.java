import java.util.Scanner;

public class Q6at2 {

	public static void main(String[] args) {
        int player, bot;

		Scanner leitor = new Scanner(System.in);
        System.out.println(" 1:pedra\n 2:papel\n 3:tesoura");
		System.out.print("digite sua escolha: ");
        player = leitor.nextInt();
        System.out.println();
        switch (player) {
		case 1:
		System.out.println("player: Pedra");
		break;
	    case 2:
		System.out.println("player: Papel");
		break;
		case 3:
		System.out.println("player: Tesoura");
		break;
		default:
		 System.out.println("ERROR!");
		}
		System.out.println();
	    bot = (int)(Math.random()*3 + 1);
		leitor.close();

		switch (bot) {
		case 1:
		System.out.println("bot: Pedra");
		break;
	    case 2:
		System.out.println("bot: Papel");
		break;
		case 3:
		System.out.println("bot: Tesoura");
		break;
		}
        System.out.println();
		if (player == bot) {
		  System.out.println("EMPATE");
		}else{
           if ((player == 1 && bot == 3)||(player == 2 && bot == 1)||(player == 3 && bot == 2)){
             System.out.println("PLAYER WIN");
		   }else{
			 System.out.println("BOT WIN");
		   }
		}

	}
}
		
	
		

