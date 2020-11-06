programa{
	inclua biblioteca Util
	inclua biblioteca Tipos
	inclua biblioteca Texto

	// Grupo 2: Iuri, Isac, Joaquim e Mariana
	
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
		inteiro nota[29]
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
		cadeia entregou = "Não"
	
		// Criação do vetor aleatório de notas
		para (inteiro i = 0; i < 29; i++) {
			// Atribuição da nota (iniciando em 0) e transformando o valor em cadeia
			nota[i] = 0
		}
		escreva("CODIGO\t\tNOME\t\t\t\tEMAIL\t\t\t\t\tENTREGOU\tNOTA")

		// Loop para escrever a lista e salvar as informações de cada aluno na matriz {infos}
		para (inteiro i = 0; i < 29; i++) {
			
			escreva("\nG2 - " + (i + 1) + "\t\t" + nomes[i] + "\t\t" + email[i] + "\t\t" + entregou + "\t\t" + nota[i] + "\n")
		}
		
		enquanto(continua) {	
			escreva("\nEscolha o código desejado para ver o aluno:\n")
			leia(escolhas)
			escreva("O aluno fez a entrega? Sim / Não\n")
			leia(entregou)
		
			// Loop para passar por todos os índices (posições) dos alunos e caso encontre o índice(posição) escolhida
			// pelo usuário, escrever as informações do usuário na tela
			para (inteiro i = 1; i <= 29; i++) {
				// Confira se o i está no valor do código escolhido
				se (Tipos.cadeia_para_inteiro(escolhas, 10) == i) {
					// Confira se o primeiro caracter da entrega é sim usando a função primeiro_char(string)
					se (Texto.obter_caracter(entregou, 0) == 'S' ou Texto.obter_caracter(entregou, 0) == 's') {
						entregou = "Sim"
						nota[i-1]++
					} senao {
						entregou = "Não"
					}
					escreva("CODIGO\t\tNOME\t\t\t\tEMAIL\t\t\t\t\tENTREGOU\tNOTA")
					escreva("\nG2 - " + i + "\t\t" + nomes[i-1] + "\t\t" + email[i-1] + "\t\t" + entregou + "\t\t" + nota[i-1] + "\n")
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
 * @POSICAO-CURSOR = 3369; 
 * @DOBRAMENTO-CODIGO = [10, 41, 74];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */