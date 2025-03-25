

import java.util.Scanner;

public class Aula6q2 {

 static void qua (int t) {
 for (int i = 0; i < t; i++) {
 	for (int j = 0; j < t; j++) {
 		System.out.print("* ");	

 	}
 	System.out.println();
 	} 
}

 static void tri (int t){
 for (int i = 1; i < t; i++) {
 	for (int j = 1; j < t-i; j++) {
 		System.out.print(" ");	

 	}
 	for (int j = 1; j < 2*i; j++) {
 		System.out.print("*");	

 	}
   System.out.println();
 }
}
 	
 static void los (int t) {
 for (int i = 0; i < t; i++) {
    for (int j = t - i; j > 0; j--) {
       System.out.print(" ");

    }
    for (int j = 0; j < 2 * i + 1; j++) {
       System.out.print("*");

    }
     System.out.println();

    }
    for (int i = t - 2; i >= 0; i--) {
       for (int j = t - i; j > 0; j--) {
       System.out.print(" ");
    }
    for (int j = 0; j < 2 * i + 1; j++) {
     System.out.print("*");

    }

    System.out.println();

    }
}

public static void main(String[] args) {

 Scanner leitor = new Scanner(System.in);

System.out.println("digite 1: quadrado, 2: triangulo, 3: losango");
 int n1 = leitor.nextInt();
  System.out.println("tamanho: ");
 int t = leitor.nextInt();

 switch(n1){
 case 1:
 qua(t);
 break;
 case 2:
 tri(t);
 break;
 case 3:
 los(t);
 break;
 default:
  System.out.println("error");
 }
}
}