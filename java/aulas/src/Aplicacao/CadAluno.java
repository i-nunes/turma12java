package Aplicacao;

import java.util.Scanner;
import Entidades.Pessoa;
import Entidades.Disciplina;

public class CadAluno {
	
	/*
	 * nome, sexo, quer estudar java ou sql?
	 * ok, você é aluno agora da disciplina java
	 */

	public static void main(String[] args) {
		
		Pessoa aluno = new Pessoa();
		Disciplina cursoPessoa = new Disciplina();
		byte escolha = 0;
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Sistema de cadastro de alunos por materia");
		
		System.out.print("Digite o nome do aluno: ");
		aluno.nome = leia.nextLine();
		
		System.out.print("\nDigite M-Masculino, F-Femilino ou O-Outro: ");

		aluno.genero = leia.next().toUpperCase().charAt(0);
		
		System.out.print("\nEscolha 1 - Java ou 2 - SQL: ");
		escolha = leia.nextByte();
		
		if (escolha == 1) {
			cursoPessoa.nome = "Java";
		} else if (escolha == 2) {
			cursoPessoa.nome = "SQL";
		} else {
			System.out.println("Digite um valor válido para a disciplina");
		}
		
		if (aluno.genero == 'F') {
			System.out.printf("\nOi %s, você é agora aluna do curso de %s", aluno.nome, cursoPessoa.nome);
		} else if (aluno.genero == 'M') {
			System.out.printf("\nOi %s, você é agora aluno do curso de %s", aluno.nome, cursoPessoa.nome);
		} else if (aluno.genero == 'O') {
			System.out.printf("\nOi %s, você é agora alune do curso de %s", aluno.nome, cursoPessoa.nome);
		} else {
			System.out.printf("\nOi %s, você não informou gênero. Você agora faz parte do curso de %s", aluno.nome, cursoPessoa.nome);
		}
		leia.close();
	}
	
}
