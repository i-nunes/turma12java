package Entidades;

public class Produto {
	/*
	 * 	nomeProduto:String
		medida:String
		quantidade:int
		ValorProdutoUni:double 
	 */
	
	public String nomeProduto, medida;
	public int quantidade;
	public double valorPordutoUni;
	
	// padrão produto
	public Produto() {
		
	}
	
	// construtor completo do produto
	public Produto(String nome, String medida, int quantidade, double valor) {
		this.nomeProduto = nome;
		this.medida = medida;
		this.quantidade = quantidade;
		this.valorPordutoUni = valor;
	}
}
