import java.util.Scanner;
import java.math.*;

public class Lista04Java {
	static Scanner read = new Scanner(System.in);
	public static void main(String[] args) {
		exercicio_3();
	}
	public static int getRandom(int min, int max) {
	    return (int) ((Math.random() * (max - min)) + min);
	}
	public static void exercicio_1() {
		int pontuacoes[] = new int[5], maior = 0;
		
		for (int i = 0; i < 5; i++) {
			System.out.println("Escreva a pontuação da atividade " +
					(i+1) + ": ");
			pontuacoes[i] = read.nextInt();
			
			if (pontuacoes[i] > maior) {
				maior = pontuacoes[i];
			}
		}
		for (int i = 0; i < 5; i++) {
			System.out.println("Pontuação " +
					(i + 1) + ": " + pontuacoes[i]);
		}
		
		System.out.println("A maior pontuação é de: " +
					maior + " pontos!");
	}
	public static void exercicio_2() {
		final int qntd = 10;
		int lancamentos[] = new int[qntd], maior = 0, contador = 0;
		double media, soma = 0.0;
		
		for (int x = 0; x < qntd; x++) {
			lancamentos[x] = getRandom(1, 6);
			
			if (lancamentos[x] > maior) {
				maior = lancamentos[x];
			}
			
			soma += lancamentos[x];
		}
		
		for (int i = 0; i < qntd; i++) {
			System.out.println("Lançamento " +
					(i+1) + ": " +
					lancamentos[i]);
			if (lancamentos[i] == maior) {
				contador++;
			}
		}
		
		media = soma / qntd;
		System.out.println("A media dos lançamentos é: " +
					media);
		System.out.println("O maior lançamento foi: " + maior + 
					" e esse resultado foi rolado " +
					contador + " vezes");
		
	}
	public static void exercicio_3() {
		final int LINHAS = 4, COLUNAS = 6;
		int N1[][] = new int[LINHAS][COLUNAS], N2[][] = new int[LINHAS][COLUNAS];
		int M1[][] = new int[LINHAS][COLUNAS], M2[][] = new int[LINHAS][COLUNAS];
		
		for (int i = 0; i < LINHAS; i++) {
			for (int j = 0; j < COLUNAS; j++) {
				N1[i][j] = getRandom(1, 10);
				N2[i][j] = getRandom(1, 10);
				
				M1[i][j] = (N1[i][j] + N2[i][j]);
				M2[i][j] = (N1[i][j] - N2[i][j]);
			}
		}
		System.out.println("\nMatriz N1:");
		for (int i = 0; i < LINHAS; i++) {
			System.out.println("────────────────────────────────────────────────────────────────────────────────────────────────");
			for (int j = 0; j < COLUNAS; j++) {
				System.out.printf("|\t%d\t", N1[i][j]);
			}
			System.out.printf("|\n");
		}
		System.out.println("────────────────────────────────────────────────────────────────────────────────────────────────");
		System.out.println("\nMatriz N2:");
		for (int i = 0; i < LINHAS; i++) {
			System.out.println("────────────────────────────────────────────────────────────────────────────────────────────────");
			for (int j = 0; j < COLUNAS; j++) {
				System.out.printf("|\t%d\t", N2[i][j]);
			}
			System.out.printf("|\n");
		}
		System.out.println("────────────────────────────────────────────────────────────────────────────────────────────────");
		System.out.println("\nMatriz M1:");
		for (int i = 0; i < LINHAS; i++) {
			System.out.println("────────────────────────────────────────────────────────────────────────────────────────────────");
			for (int j = 0; j < COLUNAS; j++) {
				System.out.printf("|\t%d\t", M1[i][j]);
			}
			System.out.printf("|\n");
		}
		System.out.println("────────────────────────────────────────────────────────────────────────────────────────────────");
		System.out.println("\nMatriz M2:");
		for (int i = 0; i < LINHAS; i++) {
			System.out.println("────────────────────────────────────────────────────────────────────────────────────────────────");		
			for (int j = 0; j < COLUNAS; j++) {
				System.out.printf("|\t%d\t", M2[i][j]);
			}
			System.out.printf("|\n");
		}
		System.out.println("────────────────────────────────────────────────────────────────────────────────────────────────");
	}
	public static void exercicio_4() {
		final int LINHA = 3, COLUNA = 3;
		int matriz[][] = new int[LINHA][COLUNA], soma = 0, diagonal = 0;
		
		for (int i = 0; i < LINHA; i++) {
			for (int j = 0; j < COLUNA; j++) {
				System.out.printf("\nDigite o valor de matriz[%d][%d]:", i, j);
				matriz[i][j] = read.nextInt();
				soma += matriz[i][j];
			}
		}
		
		for (int i = 0; i < LINHA; i++) {
			for (int j = 0; j < COLUNA; j++) {
				if (i == j) {
					diagonal += matriz[i][j];
				}
			}
		}
		
		System.out.println("A soma dos valores da matriz é: " + soma +
							"\nA soma da da diagonal principal é: " + diagonal);
	}
}
