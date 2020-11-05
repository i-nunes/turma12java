programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		exercicio_3()
	}

	funcao exercicio_1() {
		/*
		Exercícios com Vetores[  ] e Matrizes [  ][  ]
		1. Faça um programa que crie um vetor por leitura com 5 valores de pontuação de uma atividade e o escreva em seguida. 
		Encontre após a maior pontuação e a apresente.
		*/
		inteiro pontuacoes[5], maior = 0

		para (inteiro x = 0; x < 5; x++) {
			escreva("\nEscreva a pontuação da atividade " + (x + 1) + ": \n")
			leia(pontuacoes[x])	

			se (pontuacoes[x] > maior) {
				maior = pontuacoes[x]
			}
		}
		limpa()
		para (inteiro x = 0; x < 5; x++) {	
			escreva("\nPontuação " + (x + 1) + ": " + pontuacoes[x])
		}
		
		escreva("\nA maior pontuação é de: " + maior + " pontos")
				
	}
	funcao exercicio_2() {
		/*
		2. Um dado é lançado 10 vezes e o valor correspondente é anotado. Faça um programa que gere um vetor com os lançamentos,
		escreva esse vetor. A seguir determine e imprima a média aritmética dos lançamentos, contabilize e apresente também 
		quantas foram as ocorrências da maior pontuação.
		*/
		const inteiro qntd = 10
		inteiro lancamentos[qntd], maior = 0, contador = 0
		real media, soma = 0.0

		para (inteiro x = 0; x < qntd; x++) {
			lancamentos[x] = Util.sorteia(1, 6)
			
			se (lancamentos[x] > maior) {
				maior = lancamentos[x]
			}
			
			soma += lancamentos[x]
		}
		limpa()
		para (inteiro x = 0; x < qntd; x++) {
			escreva("Lançamento " + (x + 1) + ": " + lancamentos[x] + "\n")
			se (lancamentos[x] == maior) {
				contador++	
			}
		}

		media = soma / qntd
		escreva("\nA media dos lançamentos é: " + media + "\n")
		escreva("\nO maior lançamento foi: " + maior + " e esse resultado foi tirado " + contador + " vezes")
		
	}
	funcao exercicio_3() {
		/*
		3. Escreve um programa que lê duas matrizes N1 (4,6) e N2(4,6) e cria:
		a) Uma matriz M1 cujos elementos serão as somas dos elementos de mesma posição das matrizes N1 e N2;
		b) Uma matriz M2 cujos elementos serão as diferenças dos elementos de mesma posição das matrizes N1 e N2.
		*/

		const inteiro LINHAS = 4, COLUNAS = 6
		inteiro N1[LINHAS][COLUNAS], N2[LINHAS][COLUNAS], M1[LINHAS][COLUNAS], M2[LINHAS][COLUNAS]

		
		para (inteiro i = 0; i < LINHAS; i++) {
			para (inteiro j = 0; j < COLUNAS; j++) {
				N1[i][j] = Util.sorteia(1, 10)
				N2[i][j] = Util.sorteia(1, 10)
				
				M1[i][j] = (N1[i][j] + N2[i][j])
				M2[i][j] = (N1[i][j] - N2[i][j])
			}
		}
		
		escreva("Matriz N1:\n")
		para (inteiro i = 0; i < LINHAS; i++) {
			para (inteiro j = 0; j < COLUNAS; j++) {
				escreva(N1[i][j] + "    ")
			}
			escreva("\n")
		}

		escreva("\n\nMatriz N2:\n")
		para (inteiro i = 0; i < LINHAS; i++) {
			para (inteiro j = 0; j < COLUNAS; j++) {
				escreva(N2[i][j] + "   ")
			}
			escreva("\n")
		}

		escreva("\n\nMatriz 1:\n")
		para (inteiro i = 0; i < LINHAS; i++) {
			para (inteiro j = 0; j < COLUNAS; j++) {
				escreva(M1[i][j] + "   ")
			}
			escreva("\n")
		}
		escreva("\n\nMatriz 2:\n")
		para (inteiro i = 0; i < LINHAS; i++) {
			para (inteiro j = 0; j < COLUNAS; j++) {
				escreva(M2[i][j] + "   ")
			}
			escreva("\n")
		}
		
	}
	funcao exercicio_4() {
		/*
		4. Crie um programa que receba valores do usuário para preencher uma matriz 3X3, e em seguida, exiba a soma 
		dos valores dela e a soma dos valores da primeira diagonal, ou seja, diagonal principal.
		*/
		const inteiro LINHA = 3, COLUNA = 3
		inteiro matriz[LINA][COLUNA], soma = 0

		para (inteiro i = 0; i < LINHA; i++) {
			para (inteiro j = 0; j < COLUNA; j++) {
				escreva("Digite o valor de matriz[" + i + "][" + j + "]:\n")
				leia(matriz[i][j])
				soma += matriz[i][j]
			}
		}
		escreva("\nA soma dos valores da matriz é: " + soma + 
		"\nA soma da diagonal principal é: " + (matriz[0][0] + matriz[1][1] + matriz[2][2]))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1921; 
 * @DOBRAMENTO-CODIGO = [118];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */