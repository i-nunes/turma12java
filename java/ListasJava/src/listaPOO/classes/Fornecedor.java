package listaPOO.classes;

public class Fornecedor extends Pessoa {
	
	private double valorDivida, valorCredito;
	
	public Fornecedor(String nome, double valorCredito, double valorDivida) {
		super(nome);
		this.setValorCredito(valorCredito);
		this.setValorDivida(valorDivida);
	}

	public double obterSaldo() {
		return valorCredito - valorDivida;
	}
	
	public double getValorDivida() {
		return valorDivida;
	}

	public void setValorDivida(double valorDivida) {
		this.valorDivida = valorDivida;
	}

	public double getValorCredito() {
		return valorCredito;
	}

	public void setValorCredito(double valorCredito) {
		this.valorCredito = valorCredito;
	}
}
