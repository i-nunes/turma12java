package Entidades;

public class Aluno extends Pessoa {
		
	// Atributos
	private String nome;
	private int matricula, anoNascimento;
	private char genero; // [M - Aluno F - Aluna - O - Alune]
	@SuppressWarnings("unused")
	private boolean ativo = false;
	private final int ANO_ATUAL = 2020;
	
	// Construtor
	public Aluno(String nome) {
		super(nome);
	}
	public Aluno(String nome, int matricula) {
		super(nome);
		this.matricula = matricula;
	}

	// Métodos
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
	public int idade() {
		return (ANO_ATUAL - this.anoNascimento);
	}
	public void situacao() {
		this.ativo = true;
	}
	
	public void situacao(char status) {
		this.ativo = (status == 'I') ? false : true;
	}
	
	// getters and setters
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getMatricula() {
		return matricula;
	}

	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}

	public int getAnoNascimento() {
		return anoNascimento;
	}

	public void setAnoNascimento(int anoNascimento) {
		this.anoNascimento = anoNascimento;
	}

	public char getGenero() {
		return genero;
	}

	public void setGenero(char genero) {
		this.genero = genero;
	}
}
