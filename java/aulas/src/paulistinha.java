import java.util.Scanner;
import java.util.Random;

public class paulistinha {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		String times[] = {"Corinthians" ,"Palmeiras  ", "SANTOS     ","São Paulo  " }, empate[] = new String[4];
		int rodada[][] = new int[4][4], pontos[] = new int[4], x, vencedor[] = {0, 0}, empataram = 0;
		char vitoria;
		
		
		System.out.println("************ BEM VINDO AO PAULISTINHA! ************");
		
		for (int i = 1; i < 5; i++) {
			for( x = 0; x<4 ;x++){
				System.out.println("\nO time "+ times[x] +"\n1 - ganhou, 2 - perdeu ou 3 - empatou?");
				vitoria = '0';
				//vitoria = input.next().charAt(0);
				switch(x) {
					case 0:
						vitoria = '3';
						break;
					case 1:
						vitoria = '2';
						break;
					case 2:
						vitoria = '3';
						break;
					case 3:
						vitoria = '2';
						break;
				}

				if (vitoria == '1') {
					rodada[i-1][x] = 3;
					pontos[x]+= 3;
				} else if (vitoria == '2') {
					continue;
				} else {
					rodada[i-1][x]++;
					pontos[x]++;
				}
				
			}
			System.out.printf("\n-----------RODADA %d ------------\n", i);
			System.out.println("TIMES \t\t\t RODADA \t PONTOS");
			for ( x = 0; x<4; x++) {
				System.out.println(times[x] + " \t\t " + i + " \t\t "+rodada[i-1][x]);
			}
		}
		
		System.out.println("-----------------------------");
		System.out.println("FIM DO PAULISTINHA\nRESULTADOS:");
		System.out.println("TIMES \t\t\t RODADA 1 \t RODADA 2 \t RODADA 3 \t RODADA 4 \t PONTOS");
		
		for ( x = 0; x<4; x++) {
			System.out.println(times[x] + " \t\t " 
					+ rodada[0][x] + " \t\t " 
					+ rodada[1][x] + " \t\t "
					+ rodada[2][x] + " \t\t "
					+ rodada[3][x] + " \t\t "
					+ pontos[x]);
			
		}
		
		for (x = 0; x < 4; x++) {
			if (pontos[x] > vencedor[1]) {
				vencedor[1] = pontos[x];
				vencedor[0] = x;
			}
		}
		
		for (x = 0; x < 4; x++) {
			if (pontos[x] == vencedor[1]) {
				empate[x] = times[x];
				empataram++;
			}
		}
		
		if (empataram > 1) {
			System.out.println("Empatados em primeiro lugar estão:");
			for (x = 0; x < 4; x++) {
				if (empate[x] != null) {
					System.out.println(empate[x] + " com " + pontos[x] + " pontos!");
				}
			}
		} else {
			System.out.println("O vencedor do campeonato é: " + times[vencedor[0]]);
		}
		
		input.close();		
	}

}

