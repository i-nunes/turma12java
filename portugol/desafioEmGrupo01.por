programa{
	inclua biblioteca Util
	inclua biblioteca Tipos
	inclua biblioteca Texto
	
	funcao inicio()
	{
		// Declaração de variáveis
	    	cadeia nomes[29] = {
			"Ana veronica Nascimento",
			"Bruno Estivalli Vicente",
			"Bruno Henrique Moraes  ",
			"Daniel Ferreira        ",
			"Dayane de Oliveira     ",
			"Denis Vinicius Bolla   ",
			"Diego  Joaquim Silva   ",
			"Erick Alan             ",
			"Everson Silva          ",
			"Gabriel Enrique Cabral ",
			"Guilherme Alex         ",
			"Guilherme Fidelis      ",
			"Gustavo Miquéias Lopes ",
			"Isac Cordeiro          ",
			"Iuri Garcia Nunes      ",
			"Jenifer Lima Placido   ",
			"Jéssica Cristiane      ",
			"Joao Pedro Sena        ",
			"Larissa Moraes Ribeiro ",
			"Leonardo de Moraes     ",
			"Lucas Santos Gonçalves ",
			"Mariana  de Cássia     ",
			"Patricia da Silva      ",
			"Paula Leticia          ",
			"Raul Fernandes         ",
			"Ricardo Magalhaes      ",
			"Thiago dos Anjos       ",
			"Vitória Gonçalves      ",
			"William Xavier         "
		}
          cadeia email[29] = {
			"anaveronica3001@hotmail.com  ",
			"bruno.estivalli@gmail.com    ",
			"brunohmoraes93@gmail.com     ",
			"daniel.z.ferreira@hotmail.com",
			"dayane873@gmail.com          ",
			"denisvini@gmail.com          ",
			"joaquim.diego8@gmail.com     ",
			"erickalan068@gmail.com       ",
			"eversonmessias@outlook.com   ",
			"gabrieldgrafico@outlook.com  ",
			"guilhermealex01@gmail.com    ",
			"gui.fdsk@hotmail.com         ",
			"gumiqueias@hotmail.com       ",
			"zaq.c@live.com               ",
			"iurinunes01@gmail.com        ",
			"jenifer.sdti@gmail.com       ",
			"jessicacristianebtr@gmail.com",
			"joao_usercon@hotmail.com     ",
			"larissaribeiro03@hotmail.com ",
			"leo_o_nardo1@outlook.com     ",
			"lucas.00.santos@outlook.com  ",
			"mari_oli25@hotmail.com		",
			"pathsilva09@gmail.com		",
			"paula.leticia.braz@gmail.com ",
			"raulogus2@gmail.com		",
			"ricardomrfin@gmail.com		",
			"thiagohdosanjos99@gmail.com  ",
			"vitoriagcf@hotmail.com		",
			"william.xavier07@hotmail.com "
		}
		cadeia nota[29]
		cadeia escolhas
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
		logico continua = verdadeiro
		inteiro aleatori
		cadeia entrega[2] = {
			"Sim", 
			"Não"
		}
		// Matriz usada para guardar, em um único lugar, todas as informações que serão impressas do aluno
		cadeia infos[29][4] 

		// Criação do vetor aleatório de notas
		para (inteiro i = 0; i < 29; i++) {
			// Atribuição de cada nota, pegando um número inteiro (sorteado entre 1 à 10) e transformando em uma cadeia
			nota[i] = Tipos.inteiro_para_cadeia(Util.sorteia(1, 10), 10)
		}
		escreva("CODIGO\t\tNOME\t\t\t\tEMAIL\t\t\t\t\tENTREGOU\tNOTA")

		// Loop para escrever a lista e salvar as informações de cada aluno na matriz {infos}
		para (inteiro i = 0; i < 29; i++) {
			// Sorteio entre 0 e 1 para determinar o valor da {entrega} ("Sim" ou "Não")
			aleatori = Util.sorteia(0, 1)
			// Caso o valor de {entrega} seja "Não", zerar a nota do aluno
			se (entrega[aleatori] == "Não") {
				nota[i] = "0"
			}
			// Atribuição das informações do aluno à matriz
			infos[i][0] = nomes[i]
			infos[i][1] = email[i]
			infos[i][2] = entrega[aleatori]
			infos[i][3] = nota[i]
			
			escreva("\nG1 - " + (i + 1) + "\t\t" + infos[i][0] + "\t\t" + infos[i][1] + "\t\t" + infos[i][2] + "\t\t" + infos[i][3] + "\n")
		}
		
		enquanto(continua) {	
			escreva("\nEscolha o código desejado para ver o aluno:\n")
			leia(escolhas)
			// Loop para passar por todos os índices (posições) dos alunos e caso encontre o índice(posição) escolhida
			// pelo usuário, escrever as informações do usuário na tela
			para (inteiro i = 1; i <= 29; i++) {
				se (Tipos.cadeia_para_inteiro(escolhas, 10) == i) {
					escreva("CODIGO\t\tNOME\t\t\t\tEMAIL\t\t\t\t\tENTREGOU\tNOTA")
					escreva("\nG1 - " + i + "\t\t" + infos[i-1][0] + "\t\t" + infos[i-1][1] + "\t\t" + infos[i-1][2] + "\t\t" + infos[i-1][3] + "\n")
				}
			}
			escreva("\nDeseja continuar? Sim / Não\n")
			leia(escolhas)
			// Obtém o caracter da primeira posição da cadeia {escolhas} e caso seja 'n' ou 'N', finaliza o programa
			se (Texto.obter_caracter(escolhas, 0) == 'n' ou Texto.obter_caracter(escolhas, 0) == 'N') {
				continua = falso
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 161; 
 * @DOBRAMENTO-CODIGO = [8, 39, 72];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */