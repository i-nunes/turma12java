import java.util.Scanner;
import java.math.*;

public class Lista01Java {
	
	public static void main(String[] args) {
		exercicio_6();
	}
	
	public static void exercicio_1() {
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite quantos anos de vida você tem: ");
		int anos = read.nextInt();
		System.out.println("Digite quantos meses de vida você tem: ");
		int meses = read.nextInt();
		System.out.println("Digite quantos dias de vida você tem: ");
		int dias = read.nextInt();
		
		System.out.println("Você tem " + ((anos * 365) + (meses * 30) + dias) + "de vida");
		read.close();
	}
	public static void exercicio_2() {
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite sua idade em quantidade de dias: ");
		
		int idade = read.nextInt();
		
		System.out.printf("Você tem %d anos %d meses e %d dias de vida",
				idade / 365,
				(idade % 365) / 30,
				(idade % 365) % 365);
		
		read.close();
	}
	public static void exercicio_3() {
		Scanner read = new Scanner(System.in);
		
		System.out.println("Tempod e duração do evento em segundos: ");
		
		int tempo = read.nextInt();
		
		System.out.println("-------------------\n"
				+ "Horas: " + (tempo/3600)  + "\n"
				+ "Minutos: " + ((tempo %3600) / 60) + "\n"
				+ "Segundo: " + ((tempo % 3600) % 60) + "\n");
		
		read.close();
	}
	public static void exercicio_4() {
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite o valor de A: ");
		int A = read.nextInt();
		System.out.println("Digite o valor de B: ");
		int B = read.nextInt();
		System.out.println("Digite o valor de C: ");
		int C =read.nextInt();
		
		System.out.printf("O valor de D é: %.2f\n",
				((Math.pow((A+B), 2) + Math.pow(B+C, 2)) / 2));
		
		read.close();
	}
	public static void exercicio_5() {
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite o valor da primeira nota: ");
		double nota1 = read.nextDouble();
		System.out.println("Digite o valor da segunda nota: ");
		double nota2 = read.nextDouble();
		System.out.println("Digite o valor da terceira nota: ");
		double nota3 = read.nextDouble();
		
		System.out.printf("Sua média é: %.2f",
				(nota1 * 2 + nota2 * 3 + nota3 * 5 ) / (2 + 3 + 5));
		
		read.close();
	}
	public static void exercicio_6() {
		
		Scanner read = new Scanner(System.in);
		
		System.out.println("Valor de x1:");
		int x1 = read.nextInt();
		System.out.println("Valor de x2:");
		int x2 = read.nextInt();
		System.out.println("Valor de y1:");
		int y1 = read.nextInt();
		System.out.println("Valor de y2:");
		int y2 = read.nextInt();
		
		System.out.printf("O resultado da expressão é: " +
				(Math.ceil(Math.sqrt(Math.pow((x2 - x1), 2) + Math.pow((y2 - y1), 2))))
				);
		
		read.close();
	}
	public static void exercicio_7() {			
		Scanner read = new Scanner(System.in);
		
		System.out.println("Valor de a: ");
		double a = read.nextDouble();
		System.out.println("Valor de b: ");
		double b = read.nextDouble();
		System.out.println("Valor de c: ");
		double c = read.nextDouble();
		System.out.println("Valor de d: ");
		double d = read.nextDouble();
		System.out.println("Valor de e: ");
		double e = read.nextDouble();
		System.out.println("Valor de f: ");
		double f = read.nextDouble();
		System.out.printf("\na: %.2f\nb: %.2f\nc: %.2f\nd: %.2f\ne: %.2f\nf: %.2f\n",
				a, b, c, d, e, f);

		double x = ((c * e) - (b * f)) / ((a * e) - (b * d));
		double y = ((a * f) - (c * d)) / ((a * e) - (b * d));
		
		System.out.println("Valor de x: " + x + "\nValor de y: " + y + "\n");		
		
		read.close();
	
	}
	public static void exercicio_8() {
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite o custo de fábrica do carro: ");
		double custoFabrica = read.nextDouble();
		
		System.out.printf("O custo para o consumidor será de: R$ %.2f",
				(custoFabrica + 
				((custoFabrica * 28) / 100) + 
				((custoFabrica * 45) / 100)) 
				);
	}
}
