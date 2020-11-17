package Aplicacao;
import java.util.Scanner;
import Entidades.Pessoa;
import Entidades.Cachorro;
import Entidades.Aves;

public class PetBet {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		
		Pessoa cliente = new Pessoa("Ed", "Nascimento");
		Cachorro dog1 = new Cachorro("Pintcher");
		Aves ave1 = new Aves("verde", "Curvado", "Tucano");
		
		System.out.println(cliente.nome);
		
		leia.close();
	}

}
