package Entidades;

public class Pessoa {
	
	// Atributos da classe
	public String nome, sobrenome;
	public char genero;
	public int anoNascsimento;

	// Construtor
	public Pessoa() { // Construtor padrão
		
	}
	
	public Pessoa(String nome) {
		this.nome = nome;
	}
	
	public Pessoa(String nome, String sobrenome) {
		this.nome = nome;
		this.sobrenome = sobrenome;
	}
	
}

