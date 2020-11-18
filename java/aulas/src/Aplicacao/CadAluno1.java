package Aplicacao;

import java.util.Scanner;
import Entidades.Aluno;

public class CadAluno1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		String nome;
		int matricula;
		System.out.print("Nome do aluno: ");
		nome = leia.nextLine();
		System.out.print("\nMatricula do aluno: ");
		matricula = leia.nextInt();
		
		Aluno aluno1 = new Aluno(nome, matricula);
		
		System.out.print("\nDigite seu gênero [M/F/O]: ");
		aluno1.setGenero(leia.next().toUpperCase().charAt(0));
		
		System.out.println("\nDigite o ano de nascimento:");
		aluno1.setAnoNascimento(leia.nextInt());
		aluno1.idade();
		aluno1.situacao();
		
		System.out.printf("\nBem-vindo %s %s!\n", 
				aluno1.obterGenero(), aluno1.getNome());
		
		if (aluno1.idade() < 13) {
			System.out.println("Você está matriculado no ensino fundamental");
		} else if (aluno1.idade() >= 13 && aluno1.idade() <= 17) {
			System.out.println("Você está matriculado no ensino médio");
		} else if (aluno1.idade() > 17) {
			System.out.println("Você está matriculado no ensino superior");
		}
		
		System.out.printf("Nome: %s\nGenero: %s\nMatricula: %d\nIdade: %d", 
				aluno1.getNome(), aluno1.getGenero(), 
				aluno1.getMatricula(), aluno1.idade());
		
		leia.close();
	}
}
