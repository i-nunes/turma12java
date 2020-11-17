package Lista01POO.classes;

public class Aviao {
	
	public String modelo;
	public int anoFabricacao;
	public boolean voando = false;
	public double velocidade = 1.0;

	public Aviao(String modelo, int ano) {
		this.modelo = modelo;
		this.anoFabricacao = ano;
	}
	
	public void voar(double acc) {
		for (int i = 0; i < 10; i++) {
			this.velocidade *= acc;
			System.out.println("Velocidade atual: " + this.velocidade);
		}
		if (this.velocidade > 50) {
			this.voando = true; 
			System.out.println("Agora o avião está voando");
		}
	}
	
	public void infos() {
		System.out.printf("\nModelo: %s\nAno de fabricação: %d\nVelocidade atual: %f\nVoando: %s",
				this.modelo, this.anoFabricacao, this.velocidade, (voando) ? "Sim": "Não");
	}
}
