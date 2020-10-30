programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		exercicio_8()
	}
	
	funcao exercicio_1()
	{
		/*
		1) João Papo-de-Pescador, homem de bem, comprou um microcomputador para controlar o rendimento diário de seu trabalho. 
		Toda vez que ele traz um peso de tomate maior que o estabelecido pelo regulamento do estado de São Paulo (50 quilos) 
		deve pagar um multa de R$ 4,00 por quilo excedente. João precisa que você faça um sistema que leia a variável 
		P (peso de tomates) e verifique se há excesso. Se houver, gravar na variável E (Excesso) e na variável M o valor da 
		multa que João deverá pagar. Caso contrário mostrar tais variáveis com o conteúdo ZERO.
		*/
		
		//Variáveis
		real const pesoMax = 50.0, multa = 4.00
		real P = 0.0, E = 0.0, M = 0.0
		
		//Entradas
		escreva("Escreva o peso em quilos de tomate: ")
		leia(P)
		
		//Processamentos
		se (P > 50.0) {
			E = P - 50
			M = E * 4
		}
	
		//Saídas
		escreva("O peso tem o excesso de: " + E + " Kg\n")
		escreva("A multa a ser paga é de: R$" + M + "\n")
	}
	funcao exercicio_2()
	{
		/*
		2) Elabore um sistema que leia as variáveis C e N, respectivamente código e número de horas trabalhadas de um operário. 
		E calcule o salário sabendo-se que ele ganha R$ 10,00 por hora. Quando o número de horas exceder a 50 calcule o 
		excesso de pagamento armazenando-o na variável E, caso contrário zerar tal variável. A hora excedente de trabalho 
		vale R$ 20,00. No final do processamento imprimir o salário total e o salário excedente.
		*/
		
		//Variáveis
		real const valorHora = 10.00
		real E = 0.0, N, salarioTotal, salarioExcedente
		
		//Entradas
		escreva("Escreva o número de horas trabalhadas: ")
		leia(N)
		
		//Processamentos
		se (N > 50) {
			E = N - 50
		}
		salarioTotal = (valorHora * (N - E)) + (valorHora * 2 * E)
		salarioExcedente = (valorHora * 2) * E
		
		//Saídas
		escreva("Seu salário total é: R$ " + salarioTotal + "\nO seu salário excedente é: R$ " + salarioExcedente + "\n")	
	}
	funcao exercicio_3()
	{
		/*
		3) Desenvolva um sistema em que:
		Leia 4 (quatro) números;
		Calcule o quadrado de cada um;
		Se o valor resultante do quadrado do terceiro for >= 1000, imprima-o e finalize;
		Caso contrário, imprima os valores lidos e seus respectivos quadrados.
		*/
		
		//Variáveis
		real a, b, c, d
		
		//Entradas
		escreva("Escreva o valor de a\n")
		leia(a)
		escreva("Escreva o valor de b\n")
		leia(b)
		escreva("Escreva o valor de c\n")
		leia(c)
		escreva("Escreva o valor de d\n")
		leia(d)
		
		//Processamentos
		a = mat.potencia(a , 2)
		b = mat.potencia(b , 2)
		c = mat.potencia(c , 2)
		d = mat.potencia(d , 2)
		
		//Saídas	
		se (c >= 1000) {
			escreva(c)
		} senao {
			escreva("a: " + a + "\n" + "b: " + b + "\n" + "c: " + c + "\n" + "d: " + d + "\n")
		}
	}
	funcao exercicio_4()
	{
		/*
		4) Faça um sistema que leia um número inteiro e mostre uma mensagem indicando
		se este número é par ou ímpar,e se é positivo ou negativo.
		*/
		
		//Variáveis
		inteiro n
		
		//Entradas
		escreva("Digite um número inteiro: \n")
		leia(n)
		
		//Processamentos
		//Saídas
		se (n % 2 == 0 e n > 0) {
			escreva("O número inserido é par e positivo")
		} senao se (n % 2 == 0 e n < 0) {
			escreva("O número inserido é par e negativo")
		}
		senao se (n > 0) {
			escreva("O número inserido é ímpar e positivo")
		} senao se (n < 0) {
			escreva("O número inserido é ímpar e negativo")	
		}
	}
	funcao exercicio_5()
	{
		/*
		5) A Secretaria de Meio Ambiente que controla o índice de poluição mantém 3 grupos de indústrias
		que são altamente poluentes do meio ambiente. O índice de poluição aceitável varia de 0,05 até 0,25.
		Se o índice sobe para 0,3 as indústrias do 1º grupo são intimadas a suspenderem suas atividades,
		se o índice crescer para 0,4 as industrias do 1º e 2º grupo são intimadas a suspenderem suas atividades,
		se o índice atingir 0,5 todos os grupos devem ser notificados a paralisarem suas atividades.
		Faça um sistema que leia o índice de poluição medido e emita a notificação adequada aos diferentes grupos de empresas.
		*/
		
		//Variáveis
		real indice
		
		//Entradas
		escreva("Digite o índice de poluição: ")
		leia(indice)
		
		//Processamentos
		//Saídas
		se (indice >= 0.3 e indice < 0.4) {
			escreva("Indústrias do 1º grupo devem suspender suas atividades")
		} senao se (indice >= 0.4) {
			escreva("Indústria do 1º e 2º grupo devem suspender suas atividades")	
		} senao {
			escreva("Todos os grupos devem suspender suas atividades")	
		}
	}
	funcao exercicio_6()
	{
		/*
		6) Elabore um sistema que dada a idade de um nadador classifique-o em uma das seguintes categorias:
		Infantil A = 5 a 7 anos
		Infantil B = 8 a 11 anos
		Juvenil A = 12 a 13 anos
		Juvenil B = 14 a 17 anos
		Adultos = Maiores de 18 anos
		*/
		//Variáveis
		inteiro idade
		
		//Entradas
		escreva("Escreva a idade do nadador: ")
		leia(idade)
		
		//Processamentos
		//Saídas	
		se (idade >= 5 e idade <= 7) {
			escreva("Categoria Infantil A")	
		} senao se (idade >= 8 e idade <= 11) {
			escreva("Categoria Infantil B")	
		} senao se (idade >= 12 e idade <= 13) {
			escreva("Categoria Juvenil A")	
		} senao se (idade >= 14 e idade <= 17) {
			escreva("Categoria Juvenil B")	
		} senao se (idade >= 18) { // Inseri >= apesar do problema não incluir a idade de 18 anos
			escreva("Categoria Adulto")	
		} 
	}
	funcao exercicio_7()
	{
		/*
		7) Receber valores de base e altura de um triângulo e verificar se são valores válidos (positivos maiores que zero).
		Em caso afirmativo, calcular a área do triângulo.
		*/
		
		//Variáveis
		inteiro b, h
		
		//Entradas
		escreva("Escreva o valor da base: \n")
		leia(b)
		escreva("Escreva o valor da altura: \n")
		leia(h)
		
		//Processamentos
		//Saídas
		se (h > 0 e b > 0) {
			escreva("A área deste triângulo é: " + ((b * h) / 2))	
		}
		
	}
	funcao exercicio_8()
	{
		/*
		8) Construa um sistema para ler uma variável numérica N e imprimi-la somente se a mesma for maior que 100,
		caso contrário imprimi-la com o valor zero.
		*/
		
		//Variáveis
		inteiro N
		
		//Entradas
		escreva("Escreva o valor de N: \n")
		leia(N)
		
		//Processamentos
		//Saídas	
		se (N > 100) {
			escreva("N: " + N)
		} senao {
			N = 0
			escreva(N)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4238; 
 * @DOBRAMENTO-CODIGO = [9, 37, 64, 155, 186];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */