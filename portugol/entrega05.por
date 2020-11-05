programa
{
	inclua biblioteca Util
	inclua biblioteca Matematica --> mat
	 
	funcao inicio()
	{
		exercicio_6()
	}

	funcao exercicio_1() {
		/*
		1-  	Elabore um programa que calcule o que deve ser pago por um produto, considerando o preço normal de etiqueta 
		e a escolha da condição de pagamento. Utilize os códigos da tabela a seguir para ler qual a condição de pagamento 
		escolhida e efetuar o cálculo adequado.
		Código Condição de pagamento
		1 À vista em dinheiro ou cheque, recebe 20% de desconto
		2 À vista no cartão de crédito, recebe 15% de desconto
		3 Em duas vezes, preço normal de etiqueta sem juros
		4 Em três vezes, preço normal de etiqueta mais juros de 10%
		*/

		real valor
		inteiro codigo

		escreva("Qual o valor do pagamento?\n")
		leia(valor)
		escreva("Qual será a condição de pagamento?\n1 À vista em dinheiro ou cheque, recebe 20% de desconto\n")
		escreva("2 À vista no cartão de crédito, recebe 15% de desconto\n3 Em duas vezes, preço normal de etiqueta sem juros\n")
		escreva("4 Em três vezes, preço normal de etiqueta mais juros de 10%\n")
		leia(codigo)

		se (codigo == 1) {
			valor = valor - valor * 0.2
		} senao se (codigo == 2) {
			valor = valor - valor * 0.15
		} senao se (codigo == 3) {
			valor = valor
		} senao se (codigo == 4) {
			valor = valor + valor * 0.1
		}

		escreva("\nO valor a ser pago será de: R$" + valor + "\n")
	}
	funcao exercicio_2() {
		/*
		2-  	O IMC – Índice de Massa Corporal é um critério da Organização Mundial de Saúde para dar uma indicação sobre a 
		condição de peso de uma pessoa adulta. A fórmula é IMC = peso / ( altura )2
		Elabore um programa que leia o peso e a altura de um adulto e mostre sua condição de acordo com a tabela abaixo.
		IMC em adultos Condição
		Abaixo de 18,5 Abaixo do peso
		Entre 18,5 e 25 Peso normal
		Entre 25 e 30 Acima do peso
		Acima de 30 obeso
		*/

		real peso, altura, IMC

		escreva("Digite seu peso em kgs: \n")
		leia(peso)
		escreva("Digite sua altura em m: \n")
		leia(altura)

		IMC = peso / (altura ** 2)
		se (IMC < 18.5) {
			escreva("Você está abaixo do peso")
		} senao se (IMC > 18.5 e IMC < 25.0) {
			escreva("Você está com o peso saudável")
		} senao se (IMC > 25.0 e IMC < 30.0) {
			escreva("Você está acima do peso")
		} senao {
			escreva("Você está obeso")
		}
	}
	funcao exercicio_3() {
		/*
		3-  	Escrever um programa que leia uma quantidade desconhecida de números e conte quantos deles estão nos seguintes 
		intervalos: [0-25], [26-50], [51-75] e [76-100]. A entrada de dados deve terminar quando for lido um número negativo.
		*/

		inteiro numero = 0, inter1 = 0, inter2 = 0, inter3 = 0, inter4 = 0

		enquanto (numero >= 0) {
			escreva("Digite um número: \n")
			leia(numero)

			se (numero >= 0 e numero <= 25) {
				inter1++
			} senao se (numero >= 26 e numero <= 50) {
				inter2++
			} senao se (numero >= 51 e numero <= 75) {
				inter3++
			} senao se (numero >= 76 e numero <= 100) {
				inter4++
			}
		}

		escreva("\nIntervalo [0-25]: " + inter1)
		escreva("\nIntervalo [26-50]: " + inter2)
		escreva("\nIntervalo [51-75]: " + inter3)
		escreva("\nIntervalo [76-100]: " + inter4)
	}
	funcao exercicio_4() {
		/*
		4-  	Faça um programa que calcula e escreve a seguinte soma: soma = 1/1 + 3/2 + 5/3 + 7/4 + ... + 99/50
		*/

		real soma = 0.0, num = 1.0

		para (real den = 1.0; den <= 50; den++) {
			soma += num / den
			num += 2.0
		}
		escreva("Soma: " + mat.arredondar(soma, 4))
	}
	funcao exercicio_5() { 
		/*
		5-  	Faça um programa que leia um vetor de 5 posições para números reais e, depois, um código inteiro. 
		Se o código for zero, finalize o programa; se for 1, mostre o vetor na ordem direta; se for 2, mostre o 
		vetor na ordem inversa. Caso, o código for diferente de 1 e 2, escreva uma mensagem informando que o código inválido.
		*/

		inteiro vetor[5], codigo

		para (inteiro i = 0; i < 5; i++) {
			vetor[i] = Util.sorteia(1, 10)
			escreva(vetor[i] + " - ")
		}
		
		escreva("\n\nEscreva o código: \n\n")
		leia(codigo)
		enquanto (codigo != 1 e codigo != 2) {
			escreva("\nO código digitado é inválido!\n")
			leia(codigo)
		}
		
		se (codigo == 1) {
			escreva("\n---Verso---\n")
			para (inteiro i = 0; i < 5; i++) {
				escreva(vetor[i] + " - ")
			}
		} senao se (codigo == 2) {
			escreva("\n---Inverso---\n")
			para (inteiro j = 4; j >= 0; j--) {
				escreva(vetor[j] + " - ")	
			}
		}
	}
	funcao exercicio_6() {
		/*
		6-  	Faça um programa que lê um vetor de 3 elementos e uma matriz de 3 x 3 elementos. 
		Em seguida o programa deve fazer a multiplicação do vetor pelas colunas da matriz.
		*/
		
		const inteiro qntd = 3
		inteiro vetor[qntd], matriz[qntd][qntd], multi[qntd]

		para (inteiro linha = 0; linha < qntd; linha++) {
			vetor[linha] = Util.sorteia(1, 9)
			para (inteiro coluna = 0; coluna < qntd; coluna++) {
				matriz[linha][coluna] = Util.sorteia(1, 9)
			}
		}

		//Vetor
		escreva("Vetor: \n")
		para (inteiro linha = 0; linha < qntd; linha++) {
			
			escreva(vetor[linha], " \n")
		}
		//Matriz
		escreva("\n\nMatriz: \n")
		para (inteiro linha = 0; linha < qntd; linha++) {
			para (inteiro coluna = 0; coluna < qntd; coluna++) {
				escreva(matriz[linha][coluna], " ")
			}
			escreva("\n")
		}

		//Multiplicação Vetor x Matriz
		/*
			matriz[j][i] * vetor[i] = 
			loop 1:
			linhaxcoluna [0,0] * coluna [0]
			linhaxcoluna [0,1] * coluna [1]
			linhaxcoluna [0,2] * coluna [2]
			Loop 2:
			linhaxcoluna [1,0] * coluna [0]
			linhaxcoluna [1,1] * coluna [1]
			linhaxcoluna [1,2] * coluna [2]
			Loop 3:
			linhaxcoluna [2,0] * coluna [0]
			linhaxcoluna [2,1] * coluna [1]
			linhaxcoluna [2,2] * coluna [2]
			
		*/
		para (inteiro linha = 0; linha < qntd; linha++) {
			para (inteiro coluna = 0; coluna < qntd; coluna++) {
				 multi[linha] += matriz[linha][coluna] * vetor[coluna] 
			}
		}
		
		para (inteiro linha = 0; linha < qntd; linha++) {
			escreva("\nA multiplicação do vetor pela coluna " + (linha + 1) + " da matriz é de: " + multi[linha])
		}
		escreva("\n\nO vetor resultante da multiplicação é: \n")
		para (inteiro linha = 0; linha < qntd; linha++) {
			escreva(multi[linha] + "\n")
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4206; 
 * @DOBRAMENTO-CODIGO = [10, 44, 74, 102, 148];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */