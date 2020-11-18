package oop.DesafioBanco;

public class ContaPoupanca extends Conta {
	
	private int anoConta;
	
	public ContaPoupanca(String nome, int anoConta) {
		super(nome);
		this.anoConta = anoConta;
	}
}
