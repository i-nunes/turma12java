package Lista02POO;

import java.util.Scanner;
import listaPOO.classes.*;

public class rodar {
	
	public static void main(String[] args) {
		exercicio_6();
	}
	
	public static void exercicio_1() {
		
		Pessoa pessoa = new Pessoa("Iuri", "R. Lopes");
		pessoa.setTelefone("(11) 9 6352-1616");
		System.out.printf("Nome: %s\nEndereço: %s\nTelefone: %s",
				pessoa.getNome(), pessoa.getEndereco(), pessoa.getTelefone());
	}
	public static void exercicio_2() {
		
		Fornecedor fornecedor = new Fornecedor("Iuri", 50000, 10000);
		System.out.printf("Nome: %s\nValorCredito: %.2f\nValorDivida: %.2f\nSaldo: %.2f",
						fornecedor.getNome(), fornecedor.getValorCredito(), 
						fornecedor.getValorDivida(), fornecedor.obterSaldo());
		fornecedor.obterSaldo();
	
	}
	public static void exercicio_3() {
		
		Empregado user = new Empregado("Iuri", 1);
		user.calcularSalario(10000);
		
		System.out.printf("Código: %d\nNome: %s\nSalário: %.2f",
				user.getCodigoSetor(), user.getNome(), user.getSalarioBase());
	}
	public static void exercicio_4() {
		Administrador adm = new Administrador("Iuri", 5000);
		
		System.out.printf("Nome: %s\nAjuda de custo: %.2f\n",
				adm.getNome(), adm.getAjudaDeCusto());
	}
	public static void exercicio_5() {
		
		Operario op = new Operario("Iuri", 5000, 0.4);
		
		System.out.printf("Nome: %s\nValor produzido: %.2f\nComissão: %.2f%\nValor recebido: %.2f",
						op.getNome(), op.getValorProducao(), op.getComissao(), op.valorComissao());
	}
	public static void exercicio_6() {
		Vendedor vend = new Vendedor("Iuri", 5000, 0.5);
		
		System.out.printf("Nome: %s\nComissao: %.2f\nValor de vendas: %.2f\nSalário: %.2f",
				vend.getNome(), vend.getComissao(), vend.getValorVendas(), vend.obterSalario());
	}
}
