package Entidades;


public class Pessoa {
	
	// Atributos da classe
	public String nome, sobrenome;
	public char genero;
	public int anoNascimento;
	private final int ANO_ATUAL = 2020;

	// Construtor	
	public Pessoa(String nome) {
		this.nome = nome;
	}
	
	public Pessoa(String nome, String sobrenome) {
		this.nome = nome;
		this.sobrenome = sobrenome;
	}
	
	// Métodos	
	public int idade() {
		return (ANO_ATUAL - this.anoNascimento);
	}
	
	public String obterGenero() {
		 String txt;
		 if (this.genero == 'M') {
			 txt = "Aluno";
		 } else if (this.genero == 'F') {
			 txt = "Aluna";
		 } else {
			 txt = "Alune";
		 }
		 return txt;
	}
	

	// getters and setters
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public char getGenero() {
		return genero;
	}

	public void setGenero(char genero) {
		this.genero = genero;
	}
	
	
	
}

