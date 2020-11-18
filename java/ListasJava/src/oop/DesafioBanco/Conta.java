package oop.DesafioBanco;

public class Conta {
		
	// atributos
	private String nome, cpf;
	private double saldo;
	private int numero;
	
	// construtor
	public Conta() {
		
	}
	
	public Conta(String nome) {
		this.nome = nome;
	}
	
	
	// métodos
	public void debitar(int valor) {
		saldo -= valor;
	}
	
	public void creditar(int valor) {
		saldo += valor;
	}

	
	// getters and setters
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}
	
	
	
	/*	
	 * 				
				
	ContaPoupanca				
	 - DataAniversario: int				
	 + correção: void (int data) 
	 	aplicar um valor em cima do saldo se a data de aniversario
	 	for a mesma da data informada pelo usuario			
	 */
}
