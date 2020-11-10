import java.util.Scanner;

public class desafioEmGrupo01 {

	public static void main(String[] args) {
		String nomes[] = {
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
				"Gustavo Miqu�ias Lopes ",
				"Isac Cordeiro          ",
				"Iuri Garcia Nunes      ",
				"Jenifer Lima Placido   ",
				"J�ssica Cristiane      ",
				"Joao Pedro Sena        ",
				"Larissa Moraes Ribeiro ",
				"Leonardo de Moraes     ",
				"Lucas Santos Gon�alves ",
				"Mariana  de C�ssia     ",
				"Patricia da Silva      ",
				"Paula Leticia          ",
				"Raul Fernandes         ",
				"Ricardo Magalhaes      ",
				"Thiago dos Anjos       ",
				"Vit�ria Gon�alves      ",
				"William Xavier         "
		};
		String email[] = {
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
			};
			int nota[] = new int[29];
			String escolhas;
			boolean masculino [] = { false, true, true, true, false, true, true, true, true, true,
				true, true, true, true, true, false, false, true, false, true, true, false, false, 				false, 
				true, true, true, true, true
			};
			boolean continua = true;
			String entregou = "N�o";
			Scanner read = new Scanner(System.in);
			
			// Cria��o do vetor de notas
			for (int i = 0; i < 29; i++) {
				// Atribui��o da nota (iniciando em 0) para cada aluno
				nota[i] = 0;
			}
			

			while (continua){
				int opcao=0;
				int contador = 0;
				int divisaoGrupo=0;
				
				do {
					System.out.println("1 - Dividir por grupo;");
					System.out.println("2 - Dividir por g�nero;");
					opcao = read.nextInt();
					
					if(opcao == 1) {
						do {
							System.out.println("Divis�o de quantas pessoa no grupo: ");
							divisaoGrupo = read.nextInt();
							System.out.println("CODIGO\t\tNOME\t\t\t\tEMAIL\t\t\t\t\tENTREGOU\tNOTA");
						} while (divisaoGrupo < 2 || divisaoGrupo > 10 );
						
						//Restante do c�digo para dividir em grupo						
						for (int i = 0; i < 29; i++) {
							if ((29-i) < 3) {
								System.out.printf("G%d\t\t%s\t\t\t%s\t\t\t\t%s\t%d\n" ,
										(contador) ,nomes[i], email[i], entregou, nota[i]);
							} else if (i % divisaoGrupo == 0) {
								contador++;
								System.out.println("----------------------------------");
								System.out.printf("G%d\t\t%s\t\t\t%s\t\t\t\t%s\t%d\n" ,
										(contador) ,nomes[i], email[i], entregou, nota[i]);
							} else {
								System.out.printf("G%d\t\t%s\t\t\t%s\t\t\t\t%s\t%d\n" ,
										(contador) ,nomes[i], email[i], entregou, nota[i]);
							}
						}
						
						
					} else if(opcao == 2) {
						System.out.println("CODIGO\t\tNOME\t\t\t\tEMAIL\t\t\t\t\tENTREGOU\tNOTA");
						// Dividir por g�nero
 						for (int i = 0; i < 29; i++) {
 							if (masculino[i]) {
 								System.out.printf("Menino\t\t%s\t\t\t%s\t\t\t\t%s\t%d\n" ,
 										nomes[i], email[i], entregou, nota[i]);
 							}
 						}
 						System.out.println("---------------------------------------------");
 						for (int i = 0; i < 29; i++) {
 							if (!masculino[i]) {
 								System.out.printf("Menina\t\t%s\t\t\t%s\t\t\t\t%s\t%d\n" ,
 										nomes[i], email[i], entregou, nota[i]);
 							}
 						}
					}
				} while(opcao < 1 || opcao > 2);
							
				System.out.println("Escolha o c�digo desejado para ver o aluno:");
				escolhas = read.next();
				System.out.println("O aluno fez a entrega? Sim / N�o\n");
				entregou = read.next();
			
				// Loop para passar por todos os �ndices (posi��es) dos alunos  
				// e caso encontre o �ndice(posi��o) escolhida
				// pelo usu�rio, escrever as informa��es do usu�rio na tela
				
				for (int i = 1; i <= 29; i++) {
					// Confira se o i est� no valor do c�digo escolhido
					if (Integer.parseInt(escolhas) == i) {
						// Confira se o primeiro caracter da entrega � sim usando a fun��o primeiro_char(string)
						if (entregou.toUpperCase().charAt(0) == 'S') {
							entregou = "Sim";
							nota[i-1]++;
						} else {
							entregou = "N�o";
						}
						System.out.println("CODIGO\t\tNOME\t\t\t\tEMAIL\t\t\t\t\tENTREGOU\tNOTA");
						System.out.printf("\nG2 - " + i + "\t\t" + nomes[i-1] + "\t\t" + email[i-1] 
								+ "\t\t" + entregou + "\t\t" + nota[i-1] + "\n");
					}
				}
				System.out.println("Deseja continuar? Sim / N�o");
				escolhas = read.next();
				// Obt�m o caracter da primeira posi��o da cadeia {escolhas} e caso seja 'n' ou 'N', finaliza o programa
				if (escolhas.toUpperCase().charAt(0) == 'N') {
					continua = false;
				}
			}
	}	
}
