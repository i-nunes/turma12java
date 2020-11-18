package listaPOO.classes;

public class Vendedor extends Pessoa {
	private double valorVendas, comissao;

	public Vendedor(String nome, double valorVendas, double comissao) {
		super(nome);
		this.setValorVendas(valorVendas);
		this.setComissao(comissao);
	}
	
	public double obterSalario() {
		return (this.getValorVendas() * this.getComissao());
	}
	
	public double getValorVendas() {
		return valorVendas;
	}

	public void setValorVendas(double valorVendas) {
		this.valorVendas = valorVendas;
	}

	public double getComissao() {
		return comissao;
	}

	public void setComissao(double comissao) {
		this.comissao = comissao;
	}
}
