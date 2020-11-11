import java.util.Scanner;

public class desafioTarefas {

	public static void main(String[] args) {
		/*
		 * 5 tarefas por 31 dias do mês
		 * usuario seleciona o dia,
		 * mostrar tarefas do dia
		 * continuar?
		 * listar tarefas do mês inteiro?
		 * */		
		Scanner read = new Scanner(System.in);
		String tarefas[][] = new String[5][31], continuar, mostrarLista; 
		int diaMes;
		boolean continua = true;
		
		while(continua) {
			System.out.println("Escolha o dia do mês: ");
			diaMes = read.nextInt();
			read.nextLine();
			diaMes--;
			
			for (int i = 0; i < 5; i++) {
				System.out.printf("\nDigite a Tarefa %d:", (i+1));
				tarefas[i][diaMes] = read.nextLine();
			}
			
			System.out.printf("\nMuito bem! As tarefas concluídas no dia %d foram:", diaMes);
			for (int i = 0; i < 5; i++) {
				System.out.printf("\nTarefa %d: %s\n", (i+1), tarefas[i][diaMes]);
			}
			
			System.out.println("\nDeseja continuar? Sim/Não");
			continuar = read.next();
			
			if (continuar.toUpperCase().charAt(0) == 'N') {
				continua = false;
			}
		}
		
		System.out.println("Deseja ver a list completa de tarefas feitas no mês? Sim/Não");
		mostrarLista = read.next();
		
		if (mostrarLista.toUpperCase().charAt(0) == 'S') {
			for (int i = 0; i < 31; i++) {
				if (tarefas[0][i] != null) {	
					System.out.printf("\n----------- Dia %d -----------\n", (i+1));
					for (int j = 0; j < 5; j++) {
						System.out.printf("\nTarefa %d: %s\n", (j+1), tarefas[j][i]);
						
					}
					System.out.println("_________________________________");
				}
			}
		}
		read.close();
	}
	
}
