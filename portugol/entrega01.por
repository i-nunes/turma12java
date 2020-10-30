programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{	
		exercicio_1()
		exercicio_2()
		exercicio_3()
		exercicio_4()
		exercicio_5()
		exercicio_6()
		exercicio_7()
		exercicio_8()
	}

	//ex 1
	funcao exercicio_1()
	{
		//Variáveis
		inteiro anos, meses, dias, conversao
		// ano 365 meses 30 dia 1

		//Entrada
		escreva("Digite quantos anos de vida você tem: ")
		leia(anos)
		escreva("Digite quantos meses de vida você tem: ")
		leia(meses)
		escreva("Digite quantos dias de vida você tem: ")
		leia(dias)

		//Processamento
		conversao = (anos * 365) + (meses * 30) + dias
		escreva("Você tem: " + conversao + " de vida\n")
	}
	//ex 2
	funcao exercicio_2()
	{
		//Variáveis
		inteiro anos, meses, dias, idade

		//Entrada
		escreva("Digite a sua idade em quantidade de dias: ")
		leia(idade)
		
		//Processamentos
		anos = idade / 365
		meses = (idade % 365) / 30
		dias = (idade % 365) % 30
		escreva("Você tem:\n" + anos + " anos de vida " + meses + " meses e " + dias + " dias de vida\n")
		
	}
	//ex 3
	funcao exercicio_3()
	{
		//Variáveis
		inteiro hor, min, seg, duracao

		
		//Entrada
		escreva("Insira a duração do evento em segundos: ")
		leia(duracao)
		
		//Processamentos
		hor = duracao / 3600
		min = (duracao % 3600) / 60
		seg = (duracao % 3600) % 60
		escreva("A duração do evento foi de:\n" + hor + " horas " + min + " minutos e "  + seg + " segundos" + "\n")
	}
	//ex 4
	funcao exercicio_4()
	{	
		//Variáveis
		inteiro A, B, C, D, R, S

		//Entrada
		escreva("Digite o valor de A: ")
		leia(A)
		escreva("Digite o valor de B: ")
		leia(B)
		escreva("Digite o valor de C: ")
		leia(C)

		//Processamentos
		R = (A + B) ** 2
		S = (B + C) ** 2
		D = (R + S) / 2
		
		escreva("O valor de D é: " + D + "\n")
	}	
	//ex 5
	funcao exercicio_5()
	{
		//Variáveis
		real nota1, nota2, nota3, media

		//Entrada
		escreva("Digite o valor da primeira nota: ")
		leia(nota1)
		escreva("Digite o valor da segunda nota: ")
		leia(nota2)
		escreva("Digite o valor da terceira nota: ")
		leia(nota3)

		//Processamentos
		media = (nota1 * 2 + nota2 * 3 + nota3 * 5) / (2 + 3 + 5)
		escreva("Sua média é: " + media + "\n")

	}	
	//ex 6
	funcao exercicio_6()
	{	
		//Variáveis
		inteiro x1, x2, y1, y2
		real raiz, valor
		
		//Entrada
		escreva("Valor de x1: ")
		leia(x1)
		escreva("Valor de y1: ")
		leia(y1)
		escreva("Valor de x2: ")
		leia(x2)
		escreva("Valor de y2: ")
		leia(y2)
		
		//Processamentos
		raiz = mat.raiz(mat.potencia(x2 - x1, 2) + mat.potencia(y2 - y1, 2), 2)
		escreva(raiz + "\n")
		
	}	
	//ex 7
	funcao exercicio_7()
	{
		//Variáveis
		real a, b, c, d, ex, f, x, y
		
		//Entrada
		escreva("Valord de a: ")
		leia(a)
		escreva("Valord de b: ")
		leia(b)
		escreva("Valord de c: ")
		leia(c)
		escreva("Valord de d: ")
		leia(d)
		escreva("Valord de e: ")
		leia(ex)
		escreva("Valord de f: ")
		leia(f)

		//Processamentos
		x = ((c * ex) - (b * f)) / ((a * ex) - (b * d))
		y = ((a * f) - (c * d)) / ((a * ex) - (b * d))
		escreva("Valor de X: " + x)
		escreva("\nValor de Y: " + y + "\n")
	}	
	//ex 8
	funcao exercicio_8()
	{
		/*
			Distribuidor = 28%
			imposto = 45%
			custo do consumidor = custo de fábrica + 28% do custo de fábrica + 45% de imposto
		*/
		
		//Variáveis
		real distribuidor, imposto, custoConsumidor, custoFabrica
		
		//Entrada
		escreva("Digite o custo de fábrica do carro: ")
		leia(custoFabrica)
		
		//Processamentos
		distribuidor = (custoFabrica * 28) / 100
		imposto = (custoFabrica * 45) / 100
		custoConsumidor = custoFabrica + distribuidor + imposto
		escreva("O custo para o consumidor será de: R$ " + custoConsumidor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1401; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */