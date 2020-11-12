import java.util.Scanner;

public class Lista05Java {

	public static void main(String[] args) {
		exercicio_1();
	}
	public static int getRandom(int min, int max) {
		return (int) ((Math.random() * (max - min))+ min);
	}
	public static void exercicio_1() {
		double valor;
		int codigo;
		Scanner read = new Scanner(System.in);
		
		System.out.println("Qual o valor do pagamento?");
		valor = read.nextDouble();
		
		System.out.println("Qual será a condição de pagamento?\n1 À vista em dinheiro ou cheque, recebe 20% de desconto");
		System.out.println("2 À vista no cartão de crédito, recebe 15% de desconto\n3 Em duas vezes, preço normal de etiqueta sem juros");
		System.out.println("4 Em três vezes, preço normal de etiqueta mais juros de 10%");
		codigo = read.nextInt();
		
		switch (codigo) {
			case 1:
				valor -= valor * 0.2;
				break;
			case 2:
				valor -= valor * 0.15;
				break;
			case 4:
				valor += valor * 0.1;
				break;
			default:
				System.out.println("Código inválido!");
				break;
		}	

		System.out.println("O valor a ser pago será de: R$" + valor);
		read.close();
	}
	public static void exercicio_2() {
		double peso, altura, IMC;
		Scanner read = new Scanner(System.in);

		System.out.println("Digite seu peso em kgs: ");
		peso = read.nextDouble();
		System.out.println("Digite sua altura em m: ");
		altura = read.nextDouble();
		
		IMC = peso / (Math.pow(altura, 2));
		if (IMC < 18.5) {
			System.out.println("Você está abaixo do peso");
		} else if (IMC > 18.5 && IMC < 25.0) {
			System.out.println("Você está com o peso saudável");
		} else if (IMC > 25.0 && IMC < 30.0) {
			System.out.println("Você está acima do peso");
		} else {
			System.out.println("Você está obeso");
		}
		read.close();
	}
	public static void exercicio_3() {
		int num = 0, inter1 = 0, inter2 = 0, inter3 = 0, inter4 = 0;
		Scanner read = new Scanner(System.in);
		
		while (num >= 0) {
			System.out.println("Digite um número: ");
			num = read.nextInt();
			
			if (num >= 0 && num <= 25) {
				inter1++;
			} else if (num >= 26 && num <= 50) {
				inter2++;
			} else if (num >= 51 && num <= 75) {
				inter3++;
			} else if (num >= 51 && num <= 75) {
				inter4++;
			}
		}
		
		System.out.println("Intervalo [0-25]: " + inter1);
		System.out.println("Intervalo [26-50]: " + inter2);
		System.out.println("Intervalo [51-75]: " + inter3);
		System.out.println("Intervalo [76-100]: " + inter4);
	}
	public static void exercicio_4() {
		double soma = 0.0, num = 1.0;
		
		for (double den = 1.0; den <=50; den++) {
			soma += num / den;
			num += 2.0;
		}
		System.out.printf("\nSoma: %.2f\n", soma);
	}
	public static void exercicio_5() {
		int vetor[] = new int[5], codigo;
		Scanner read = new Scanner(System.in);
		
		for (int i = 0; i < 5; i++) {
			vetor[i] = getRandom(1, 10);
			System.out.print(vetor[i] + " - ");
		}
		
		System.out.println("\nEscreva o código: \n");
		codigo = read.nextInt();
		
		while (codigo != 1 && codigo != 2) {
			System.out.println("O código digitado é inválido!");
			codigo = read.nextInt();
		}
		
		if (codigo == 1) {
			System.out.println("---Verso---");
			for (int i = 0; i < 5; i++) {
				System.out.println(vetor[i] + " - ");
			}
		} else if (codigo == 2) {
			System.out.println("---Inverso---");
			for (int j = 4; j >= 0; j--) {
				System.out.println(vetor[j] + " - ");
			}
		}
	}
	public static void exercicio_6() {
		final int qntd = 3;
		int vetor[] = new int[qntd], matriz[][] = new int[qntd][qntd], multi[] = new int[qntd];
		
		for (int linha = 0; linha < qntd; linha++) {
			vetor[linha] = getRandom(1, 9);
			for (int coluna = 0; coluna < qntd; coluna++) {
				matriz[linha][coluna] = getRandom(1, 9);
			}
		}
		
		System.out.println("Vetor: ");
		for (int linha = 0; linha < qntd; linha++) {
			System.out.println(vetor[linha]);
		}
		
		System.out.println("\nMatriz: \n");
		for (int linha = 0; linha < qntd; linha++) {
			for (int coluna = 0; coluna < qntd; coluna++) {
				System.out.print(matriz[linha][coluna] + " ");
			}
			System.out.println();
		}
		
		for (int linha = 0; linha < qntd; linha++) {
			for (int coluna = 0; coluna < qntd; coluna++) {
				multi[linha] += matriz[linha][coluna] * vetor[coluna];
			}
		}
		
		for (int linha = 0; linha < qntd; linha++) {
			System.out.println("A multiplicação do vetor pela coluna " + (linha + 1)
					+ " da matriz é de: " + multi[linha]);
		}
		
		System.out.println("\nO vetor resultante da multiplicação é: ");
		for (int linha = 0; linha < qntd; linha++) {
			System.out.print(multi[linha] + "\n");
		}
	}
}
