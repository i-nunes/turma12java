package listaPOO.classes;

public class Operario extends Pessoa {
	
	private double valorProducao, comissao;

	public Operario(String nome, double valorProducao, double comissao) {
		super(nome);
		this.setValorProducao(valorProducao);
		this.setComissao(comissao);
	}
	
	public double valorComissao() {
		return (this.valorProducao * this.comissao);
	}
	
	public double getValorProducao() {
		return valorProducao;
	}

	public void setValorProducao(double valorProducao) {
		this.valorProducao = valorProducao;
	}

	public double getComissao() {
		return comissao;
	}

	public void setComissao(double comissao) {
		this.comissao = comissao;
	}
	
	
}
