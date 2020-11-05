programa{
	inclua biblioteca Util
	
	funcao inicio()
	{
	    	cadeia nomes[29] = {
			"Ana veronica Nascimento cruz",
			"Bruno Estivalli Vicente",
			"Bruno Henrique Moraes Santos",
			"Daniel Ferreira",
			"Dayane de Oliveira",
			"Denis Vinicius Bolla da Silva",
			"Diego  Joaquim Silva ",
			"Erick Alan",
			"Everson Silva",
			"Gabriel Enrique Cabral Silva",
			"Guilherme Alex",
			"Guilherme Fidelis Pereira",
			"Gustavo Miquéias Lopes Santana",
			"Isac Cordeiro de Oliveira",
			"Iuri Garcia Nunes",
			"Jenifer Lima Placido",
			"Jéssica Cristiane",
			"Joao Pedro Sena",
			"Larissa Moraes Ribeiro",
			"Leonardo de Moraes Magalhães",
			"Lucas Santos Gonçalves",
			"Mariana  de Cássia Antunes Oliveira",
			"Patricia da Silva Machado",
			"Paula Leticia",
			"Raul Fernandes",
			"Ricardo Magalhaes Finkelstein",
			"Thiago dos Anjos",
			"Vitória Gonçalves de Freitas",
			"William Xavier"
		}
          cadeia email[29] = {
			"anaveronica3001@hotmail.com",
			"bruno.estivalli@gmail.com",
			"brunohmoraes93@gmail.com",
			"daniel.z.ferreira@hotmail.com",
			"dayane873@gmail.com",
			"denisvini@gmail.com",
			"joaquim.diego8@gmail.com",
			"erickalan068@gmail.com",
			"eversonmessias@outlook.com",
			"gabrieldgrafico@outlook.com",
			"guilhermealex01@gmail.com",
			"gui.fdsk@hotmail.com",
			"gumiqueias@hotmail.com",
			"zaq.c@live.com",
			"iurinunes01@gmail.com",
			"jenifer.sdti@gmail.com",
			"jessicacristianebtr@gmail.com",
			"joao_usercon@hotmail.com",
			"larissaribeiro03@hotmail.com",
			"leo_o_nardo1@outlook.com",
			"lucas.00.santos@outlook.com",
			"mari_oli25@hotmail.com",
			"pathsilva09@gmail.com",
			"paula.leticia.braz@gmail.com",
			"raulogus2@gmail.com",
			"ricardomrfin@gmail.com",
			"thiagohdosanjos99@gmail.com",
			"vitoriagcf@hotmail.com",
			"william.xavier07@hotmail.com"
		}


		inteiro nota[29] 
		
		para (inteiro i = 0; i < 29; i++) {
			nota[i] = Util.sorteia(1, 10)
		}
		
		inteiro contador = 1
		
		logico masculino [29] = {
			falso, 
			verdadeiro, 
			verdadeiro,
			verdadeiro,
			falso,
			verdadeiro,
			verdadeiro, 
			verdadeiro, 
			verdadeiro, 
			verdadeiro, 
			verdadeiro, 
			verdadeiro, 
			verdadeiro, 
			verdadeiro, 
			verdadeiro, 
			falso, 
			falso, 
			verdadeiro, 
			falso, 
			verdadeiro, 
			verdadeiro, 
			falso, 
			falso, 
			falso, 
			verdadeiro,
			verdadeiro, 
			verdadeiro, 
			verdadeiro, 
			verdadeiro
		}

		inteiro x=0
		inteiro pontos[29]
		/*
		 * 
		caracter entrega[2] = {
			's', 
			'n'
		}
		inteiro aleatori
		*/
		escreva("CODIGO\t\tNOME\t\t\tEMAIL\t\t\tENTREGOU\t\tNOTA")

		para (inteiro i = 0; i < 29; i++) {
			//aleatori = Util.sorteia(0, 1)
			escreva("\nG1 - " + contador + "\t\t" + nomes[i] + "\t\t\t\t" + email[i] + "\t\t\t\t" + "entrega" + "\t\t" + nota[i] + "\n")
			contador++
		}

		caracter escolhas
		
		escreva("Escolha o código desejado:\n")
		leia(escolhas)

		
		
		
		//escreva("CODIGO\t","NOME\t","\t\tEMAIL\n")		
		//escreva(codigo[x],"\t",nomes[x],"\t\t",email[x])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2479; 
 * @DOBRAMENTO-CODIGO = [5, 36, 77];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */