package Lista01POO.classes;

public class Cliente {
	/*
	 * 1) Crie uma classe cliente e apresente os atributos e 
	 * m�todos referentes esta classe, em seguida crie um objeto cliente, 
	 * defina as instancias deste objeto e apresente as informa��es deste objeto no console.
	 */
	
	public String nome, cpf, gen;
	int anoNascimento, idade;
	char genero;
	
	public Cliente(String nome, String cpf, char genero, int ano) {
		this.nome = nome;
		this.cpf = cpf;
		this.anoNascimento = ano;
		this.genero = genero;
	}
	
	public int idade(int ano) {
		return (int) (2020 - this.anoNascimento);
	}
	 
	public void infos() {
		gen = (this.genero == 'M') ? "Sr." : "Sra.";
		System.out.printf("Ol� %s %s! Seja bem vindo a nossa loja!\n", gen,this.nome);
		System.out.printf("O cpf informado foi: %s \nSua idade �: %d\n", this.cpf, idade(this.anoNascimento));
	}
	
}
