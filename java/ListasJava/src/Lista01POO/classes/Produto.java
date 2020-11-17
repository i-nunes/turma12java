package Lista01POO.classes;

public class Produto {
	/*
	 * Crie uma classe produto eletr�nico e apresente os atributos e 
	 * m�todos referentes esta classe, em seguida crie um objeto produto eletr�nico, 
	 * defina as instancias deste objeto e apresente as informa��es deste objeto no console.
	 */
	
	public String nome, medida;
	public int unidades;
	public double precoUnitario;
	
	public Produto(String nome, int unidade) {
		this.nome = nome;
		this.unidades = unidade;
		this.precoUnitario = 5.00;
	}
	
	public void preco() {
		System.out.printf("%d unidades de %s custam: R$%.2f\n", 
				this.unidades, this.nome, this.precoUnitario*this.unidades);
	}
}
