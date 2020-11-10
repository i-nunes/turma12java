programa
{
	
	funcao inicio()
	{
		exercicio_3()
	}
	
	funcao exercicio_1()
	{
		inteiro salario = 0, nFilhos, hab, somaSalario = 0,
		somaFilhos = 0, mediaSalario, mediaFilhos, cemDeSalario = 0, maiorSalario = 0
		para (hab = 0; hab <= 20; hab++) 	
		{
			escreva("\nDigite seu salário: ")
			leia(salario)
			somaSalario += salario
			se (salario <= 100) 
			{
				cemDeSalario++
			}
			se (salario > maiorSalario) 
			{
				maiorSalario = salario
			}
			escreva("\nDigite quantos filhos tem: ")
			leia(nFilhos)
			somaFilhos += nFilhos
		}
		mediaSalario = somaSalario / hab
		mediaFilhos = somaFilhos / hab
		cemDeSalario = (cemDeSalario * 100) / hab
		
		escreva("A média salarial da população é: R$" + mediaSalario + "\n")
		escreva("A média de número de filhos da população é: " + mediaFilhos + "\n")
		escreva("O maior salário dentro da população é de: R$" + maiorSalario + "\n")
		escreva("O percentual de pessoas da população com salário de até R$100,00 é de " + cemDeSalario + "%")
		
	}
	funcao exercicio_2()
	{
		inteiro soma = 0
		
		para (inteiro i = 1; i <= 500; i++) 
		{
			se (i % 2 != 0) {
				se (i % 3 == 0) {
					soma += i
				}	
			}	
		}
		
		escreva("A soma é: " + soma)
	}
	funcao exercicio_3()
	{
		
		real soma = 0.0, media, qntValores = 0.0, n = 1.0
		
		enquanto (n > 0) {
			escreva("Digite um número (número negativo para sair): \n")
			leia(n)
			soma += n
			qntValores++
		}
		media = soma / qntValores
		
		escreva("A soma foi: " + soma + "\nA media foi: " + media + "\nA quantidade de valores lidos foi: " + qntValores)
	}
	funcao exercicio_4()
	{
		
		inteiro n
		
		escreva("Digite um número: \n")
		leia(n)
		enquanto (n < 100) {
			n = n * 3
			escreva(n + "\n")
		}
	}
	funcao exercicio_5()
	{

		inteiro contador = 233
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
	funcao exercicio_6()
	{

		inteiro n, resposta = 0

		escreva("Digite um inteiro: \n")
		leia(n)

		faca {
			resposta += n
			n--
		} enquanto (n > 0)
		
		escreva(resposta + "\n")
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 46; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */