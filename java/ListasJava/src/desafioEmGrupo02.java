import java.util.Scanner;

public class desafioEmGrupo02 {

	static Scanner read = new Scanner(System.in);
	
	
	
	public static void main(String[] args) {
		String nConta, nome, nCpf, nCnpj, dataAniversario, Limite;
		//String usuario[] = new String[5]; 
		double valor = 0, saldo = 0, qntd, valorRetirada, 
				valorLimite = 1000.00, emprestimo, totalemprestimo = 100.0;
		char opcao, tipoConta, continuar, confirma;
		int MOVDIA = 10, numeroTalao=1, qntTalao=0;
		boolean continua = true;		
		
		System.out.print("Digite seu nome: ");
		nome = read.nextLine();
		System.out.print("Digite o data do seu aniversário: ");
		dataAniversario = read.nextLine();
		
		System.out.println("Qual tipo de conta deseja acessar?");
		System.out.print("1 - Poupança\n2 - Corrente\n3 - Especial\n4 - Empresa\nDigite: ");
		tipoConta = read.next().charAt(0);
		if (tipoConta == '4') {
			System.out.println();
			System.out.print("Digite seu CNPJ: ");
			nCnpj = read.next();
		} else {
			System.out.println();
			System.out.print("Digite seu CPF: ");
			nCpf = read.next();
		}	
		
		
		while (MOVDIA != 0) {
			while (continua) {
				switch (tipoConta) {
					case '1':
						// função Conta poupança
						nConta = "CP-01";
						System.out.println();
						System.out.println("Você deseja fazer um crédito ou débito na conta? ");
						opcao = read.next().toUpperCase().charAt(0);
						if (opcao == 'C') {
							System.out.print("Quanto deseja creditar? ");
							qntd = read.nextDouble();
							if (saldo == 0.0 || (saldo - qntd) < 0) {
								System.out.println("Não é possível creditar essa quantidade!");
								System.out.println("Seu saldo atual é de: R$" + saldo);
							} else if (qntd <= 0.0) {
								System.out.println("Digite um valor válido a ser creditado!");
							} else {
								saldo -= qntd;
								System.out.println("Valor creditado com sucesso!");
								System.out.println("Saldo atual: R$" + saldo);
								MOVDIA--;
							}
						} else if (opcao == 'D') {
							System.out.println("Quanto deseja debitar? ");
							qntd = read.nextDouble();
							if (qntd >= 0.0) {
								saldo += qntd;
								System.out.println("Valor debitado com sucesso!");
								System.out.println("Saldo atual: R$" + saldo);
								MOVDIA--;
							} else {
								System.out.println("Digite um valor válido a ser debitado!");
							}
							
						} else {
							System.out.println("Digite uma opção válida");
						}
						// função conta poupança
						break;
					case '2':
						// função conta corrente
						System.out.print("Deseja soliciar um novo talão de cheque Sim/Não: ");
						opcao = read.next().toUpperCase().charAt(0);
						
						if(opcao == 'S') {
							
							System.out.print("Quantos talão de cheques: ");
							qntTalao = read.nextInt();
							if (qntTalao <= 0) {
								System.out.println("Digite uma quantidade válida!");
							} else {
								for (int j = 1; j <= qntTalao; j++) {
									System.out.println("\nNovo Talão de Cheque");
									System.out.println("Talão de Cheque - TC "+numeroTalao);
									numeroTalao++;
								}
								MOVDIA--;
							}
						}
						break;
					case '3':		
						// função conta especial
						System.out.println("Deseja utilizar o limite Sim/Não: ");
						opcao = read.next().toUpperCase().charAt(0);
						if (opcao == 'S') {
							System.out.println("Digite um valor para retirar: ");
							valorRetirada = read.nextDouble();
							if (valorRetirada <= 0) {
								System.out.println("valor invalido");
								
							} else if (valorRetirada>valorLimite) {
								System.out.println("Limites indisponiveis, você ultrapassou: " + valorLimite);
							} else {
								valorLimite = valorLimite - valorRetirada;
								saldo += valorRetirada;
								System.out.println("valor limite restante: " + valorLimite);
								MOVDIA--;
							}
						}
						break;
					case '4':
						// função conta empresarial
						System.out.println("Desejar fazer um empréstimo? Sim/Não");
						confirma = read.next().toUpperCase().charAt(0);
						if (confirma == 'S') {
							System.out.println("O seu limite para empréstimo é de: R$" + totalemprestimo);
							System.out.println("Qual o valor do empréstimo desejado");
							emprestimo = read.nextInt();
							if (emprestimo > totalemprestimo) {
								System.out.println("O limite de empréstimo foi ultrapassado!");
								System.out.println("Seu limite é de: R$" + totalemprestimo);
							} else if (emprestimo <= 0) {
								System.out.println("Valor invalido!");
							} else {
								totalemprestimo = totalemprestimo - emprestimo;
								saldo += emprestimo;
								MOVDIA --;
								System.out.println("Empréstimo de: R$" + emprestimo + " feito com sucesso!");
								System.out.println("Saldo atual: R$" + saldo);
								System.out.println("Limite de empréstimo atual: R$" + totalemprestimo);
							}
						}
				}
				System.out.println("Deseja continuar? Sim/Não");
				continuar = read.next().toUpperCase().charAt(0);
				if (continuar == 'N') {
					continua = false;
					MOVDIA = 0;
				}
				else if (MOVDIA == 0) {
					continua = false;
					System.out.println("Suas movimentações diária acabaram! Até amanhã");
				} else if (continua){
					continua = true;
				}
				
				if (continua) {
					System.out.println("Qual tipo de conta deseja acessar?");
					System.out.println("1 - Poupança\n2 - Corrente\n3 - Especial\n4 - Empresa\nDigite: ");
					tipoConta = read.next().charAt(0);
				}
			}
			System.out.println("Obrigado por usar o nosso banco!");
		}
	}	
}
