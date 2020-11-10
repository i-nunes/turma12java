import java.util.Scanner;

public class Lista03Java {
	
	public static void main(String[] args) {
		exercicio_6();
	}
	
	public static void exercicio_1() {
		double salario = 0.0, somaSalario = 0.0, mediaSalario,
				mediaFilhos, cemDeSalario = 0, maiorSalario = 0.0;
		int  nFilhos, somaFilhos = 0, hab;
		
		Scanner read = new Scanner(System.in);
		
		for (hab = 0; hab <= 1; hab++) {
			System.out.println("Digite seu salário: ");
			salario = read.nextInt();
			somaSalario += salario;
			if (salario <= 100) {
				cemDeSalario++;
			}
			if (salario > maiorSalario) {
				maiorSalario = salario;
			}
			
			System.out.println("Digite quantos filhos tem: ");
			nFilhos = read.nextInt();
			somaFilhos += nFilhos;
			
		}
		
		mediaSalario = somaSalario / hab;
		mediaFilhos = somaFilhos / hab;
		cemDeSalario = (cemDeSalario * 100) / hab;
		
		System.out.printf("A média salarial da população é: R$%.2f\n"
				+ "A média de número de filhos da população é: %.2f\n"
				+ "O maior salário dentro da população é de: R$%.2f\n"
				+ "O percentual de pessoas da população com salário de até R$100,00 é de: %.2f",
				mediaSalario, mediaFilhos, maiorSalario, cemDeSalario);
		read.close();
	}
	public static void exercicio_2() {
		int soma = 0;
		
		for (int i = 1; i <=500; i++) {
			if (i % 2 != 0) {
				if (i % 3 == 0) {
					soma += i;
				}
			}
		}
		
		System.out.printf("A soma é: %d", soma);
	}
	public static void exercicio_3() {
	double soma = 0.0, media;
	int n = 1, qntValores = 0;
	Scanner read = new Scanner(System.in);
	
	while (n > 0) {
		System.out.println("Digite um número (número negativo para sair): ");
		n = read.nextInt();
		soma += n;
		qntValores++;
	}
	media = soma / qntValores;
	
	System.out.printf("A soma foi: %.2f\nA media foi: %.2f\nQuantidade de valores lidos: %d",
			soma, media, qntValores);
	read.close();
		/*s
		
		escreva("A soma foi: " + soma + "\nA media foi: " + media + "\nA quantidade de valores lidos foi: " + qntValores)
	} 
	 */
	}
	public static void exercicio_4() {
		int n;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite um número: ");
		n = read.nextInt();
		
		while (n < 100) {
			n *= 3;
			System.out.println("n: " + n);
		}
		read.close();
	}
	public static void exercicio_5() {
		int contador = 233;
		
		do {
			if (contador >= 300 && contador <= 400) {
				contador += 3;
				System.out.println(contador);
			} else {
				contador += 5;
				System.out.println(contador);
			}
		} while (contador < 456);
		/*
		 * 		inteiro contador = 233
		faca {
			se (contador >= 300 e contador <= 400) {
				contador += 3
				escreva(contador + "\n")
			} senao {
				contador += 5
				escreva(contador + "\n")
			}
		} enquanto (contador < 456)
		
	}
		 */
	}
	public static void exercicio_6() {
		int n, resposta = 0;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Digite um inteiro: ");
		n = read.nextInt();
		
		do {
			resposta += n;
			n--;
		} while (n > 0);
		
		System.out.println(resposta);
		read.close();
	}
}
