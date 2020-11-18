package Lista01POO;

import java.util.Scanner;

import listaPOO.classes.Aviao;
import listaPOO.classes.Cliente;
import listaPOO.classes.Produto;

public class rodar {

	public static void main(String[] args) {
		exercicio_3();
	}
	
	public static void exercicio_1() {
		String nome, cpf;
		char genero;
		int anoNascimento;
		
		Scanner read = new Scanner(System.in);
		
		System.out.print("\nNome: ");
		nome = read.nextLine();
		System.out.print("\nCPF: ");
		cpf = read.next();
		System.out.print("\nAno de nascimento: ");
		anoNascimento = read.nextInt();
		System.out.print("\nGênero (M/F): ");
		genero = read.next().toUpperCase().charAt(0);
		
		Cliente cliente = new Cliente(nome, cpf, genero, anoNascimento);
		
		cliente.infos();
		read.close();
	}
	public static void exercicio_2() {
		
		Scanner read = new Scanner(System.in);
		
		
		String modelo;
		int anoFabricacao;
		
		System.out.print("Modelo: ");
		modelo = read.nextLine();
		System.out.print("Ano de fabricação: ");
		anoFabricacao = read.nextInt();
		
		Aviao boing = new Aviao(modelo, anoFabricacao);
		boing.voar(1.05);
		boing.infos();
		
		read.close();
		
	}
	public static void exercicio_3() { 
		String nome;
		int qntd;
		
		Scanner read = new Scanner(System.in);
		
		System.out.print("Digite o nome do produto que deseja comprar: ");
		nome = read.next();
		System.out.println("Digite a quantidade que deseja comprar: ");
		qntd = read.nextInt();
		
		Produto ps4 = new Produto(nome, qntd);
		ps4.preco();
		
		read.close();
		
	}

}
