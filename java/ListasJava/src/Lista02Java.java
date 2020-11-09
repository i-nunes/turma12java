import java.util.Scanner;

public class Lista02Java {
	
	public static void main(String[] args) {
		exercicio_8();
	}
	
	public static void exercicio_1() {
		final double pesoMax = 50.0, multa = 4.00;
		double P = 0.0, E = 0.0, M = 0.0;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Escreva o peso(em quilos) de tomate: ");
		P = read.nextDouble();
		
		if (P > pesoMax) {
			E = P - pesoMax;
			M = E * multa;
		}
		System.out.println("O excesso de peso é de: " + E + " Kg");
		System.out.println("A multa a ser paga é de: R$" + M);
		read.close();
	}
	public static void exercicio_2() {
		final double valorHora = 10.00;
		double E = 0.0, N, salarioTotal, salarioExcedente;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite o total de horas trabalhas: ");
		N = read.nextDouble();
		
		if (N > 50) {
			E = N - 50;
		}
		
		salarioTotal = (valorHora * (N - E)) + (valorHora * 2 * E);
		salarioExcedente = (valorHora * 2) * E;
		
		System.out.printf("Seu salário total é de: R$ %.2f\n"
				+ "Seu salário excedente é de: R$ %.2f\n",
				salarioTotal,
				salarioExcedente);
		
		read.close();
	}
	public static void exercicio_3() {
		Scanner read = new Scanner(System.in);
		
		System.out.println("Escreva o valor de a: ");
		double a = read.nextDouble();
		System.out.println("Escreva o valor de b: ");
		double b = read.nextDouble();
		System.out.println("Escreva o valor de c: ");
		double c = read.nextDouble();
		System.out.println("Escreva o valor de d: ");
		double d = read.nextDouble();
		
		a = Math.pow(a, 2);
		b = Math.pow(b, 2);
		c = Math.pow(c, 2);
		d = Math.pow(d, 2);
		
		if (c >= 1000) {
			System.out.println(c);
		} else {
			System.out.printf("a: %.2f\nb: %.2f\nc: %.2f\nd: %.2f\n", 
					a, b, c, d);
		}
		read.close();
	}
	public static void exercicio_4() {
		Scanner read = new Scanner(System.in);
		int n;
		
		System.out.println("Digite um número inteiro: ");
		n = read.nextInt();
		
		if (n % 2 == 0 && n >= 0) {
			System.out.println("O número inserido é par e positivo");
		} else if (n % 2 == 0 && n < 0) {
			System.out.println("O número inserido é par e negativo");
		} else if (n >= 0) {
			System.out.println("O número inserido é ímpar e positivo");
		} else if (n < 0) {
			System.out.println("O número inserido é ímpar e negativo");
		}
		
		read.close();
	}
	public static void exercicio_5() {
		double indice;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite o índice de poluição: ");
		indice = read.nextDouble();
		
		if (indice >= 0.3 && indice < 0.4) {
			System.out.println("Indústrias do 1º grupo devem suspender suas atividades");
		} else if (indice >= 0.4 && indice < 0.5) {
			System.out.println("Indústria do 1º e 2º grupo devem suspender suas atividades");
		} else if (indice >= 0.5){
			System.out.println("Todos os grupos devem suspender suas atividades");
		}
		
		read.close();
	}
	public static void exercicio_6() {
		int idade;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Escreva a idade do nadador: ");
		idade = read.nextInt();
		
		if (idade >= 5 && idade <= 7) {
			System.out.println("Categoria Infantil A");
		} else if (idade >= 8 && idade <= 11) {
			System.out.println("Categoria Infantil B");
		} else if (idade >= 12 && idade <= 13) {
			System.out.println("Categoria Juvenil A");
		} else if (idade >= 14 && idade <= 17) {
			System.out.println("Categoria Juvenil B");
		} else if (idade >= 18) {	
			System.out.println("Categoria Adulto");
		}
		read.close();
	}
	public static void exercicio_7() {
		int b, h;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Escreva o valor da base: ");
		b = read.nextInt();
		System.out.println("Escreva o valor da altura: ");
		h = read.nextInt();
		
		if (h > 0 && b > 0) {
			System.out.println("A área deste triângulo é: " + ((b * h) / 2));
		}
		read.close();
	}
	public static void exercicio_8() {
		int N;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Escreva o valor de N: ");
		N = read.nextInt();
		
		if (N > 100) {
			System.out.println("N: " + N);
		} else {
			N = 0;
			System.out.println("N: " + N);
		}
	}
	
	
	
	
	
	
}
