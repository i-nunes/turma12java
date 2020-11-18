package listaPOO.classes;

public class Administrador extends Pessoa{
	private double ajudaDeCusto;
	
	public Administrador(String nome, double ajuda) {
		super(nome);
		this.setAjudaDeCusto(ajuda);
	}

	public double getAjudaDeCusto() {
		return ajudaDeCusto;
	}

	public void setAjudaDeCusto(double ajudaDeCusto) {
		this.ajudaDeCusto = ajudaDeCusto;
	}
}
