import java.util.Scanner;

public class MeuNome {

	public static void main(String[] args) {
		
		// Instanciando um teclado
		Scanner leia = new Scanner(System.in);
		
		int anoNascimento, idade;
		double salario;
		String nome;
		
		
		System.out.print("Digite seu nome: ");
		nome = leia.nextLine();	 
		System.out.print("Digite seu ano de nascimento: ");
		anoNascimento = leia.nextInt();
		System.out.print("Digite seu sal�rio: ");
		salario = leia.nextDouble();
		
		idade = 2020 - anoNascimento;
		
		System.out.println(nome);
		System.out.println(idade);
		System.out.println(salario);
		System.out.printf("Meu nome � %s \nE tenho %d anos de idade\nE fa�o R$ %.2f", nome, idade, salario);
		
	}
	
}
