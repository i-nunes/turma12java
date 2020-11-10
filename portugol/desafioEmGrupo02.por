programa
{
	inclua biblioteca Matematica-->mat
	inclua biblioteca Texto
	inclua biblioteca Tipos
	
	funcao inicio()
	{	/*
		PROJETO
		ESPECIFICAÇÃO DE PROGRAMA:
		NOME DE LOJA: CADA GRUPO INVENTAR	OK
		QUERO 10 PRODUTOS DIFERENTES – CADA GRUPO DEFINE	OK
		QUERO SABE SE É LITRO, KG, QDE, PEÇA, UNIDADE – CONFORME O PRODUTO	OK
		VALOR UNITARIO POR UNIDADE	OK
		O ESTOQUE MINIMO DE SAIDA É 10 POR UNIDADE OK
		TUDO ISSO EM VETOR
		CRIAR UM CODIGO DE PRODUTO PARA CADA PRODUTO OK
		[O CARRINHO DE COMPRA É UM VETOR DE COMPRAS]	
		*O CLIENTE SÓ PODE COMPRAR 10 PRODUTOS SEM REPETIÇÃO
		O PROGRAMA DEVER:
		MOSTRA OS PRODUTOS COM TODOS OS DADOS
		DAR A OPÇÃO DO USUARIO SELECIONAR UM PRODUTO E DIZER A QUANTIDADE A COMPRAR (NÃO PODE SELECIONAR PRODUTO COM QTDE ZERO)
		DAR OPÇÃO AO USUARIO DE CONTINUAR COMPRANDO
		CASO FINALIZADA A COMPRA MOSTRA O TOTAL, MOSTRA O IMPOSTO DE 9% TOTAL E AS OPÇÕES DE PAGAMENTO:
		Código Condição de pagamento
		1 À vista em dinheiro ou cheque, recebe 20% de desconto
		2 À vista no cartão de crédito, recebe 15% de desconto
		3 Em duas vezes, preço normal de etiqueta sem juros [ QUERO VER AS PARCELAS]
		4 Em três vezes, preço normal de etiqueta mais juros de 10% [QUERO VER AS PARCELAS COM JUROS]
               MOSTRA NOTA FISCAL
               NOME EMPRESA
               RELAÇÃO DE PRODUTOS COMPRADOS
               IMPOSTO PAGO
               VALOR A PAGA NO TIPO SELECIONADO
               O PROGRAMA DEVER INFORMAR SE CONTINUA S OU NÃO PARA O PROXIMO USUARIO, SENÃO SAIR DO PROGRAMA, SE SIM, RECOMEÇA
               MAIS JÁ CONSIDERAR A ALTERAÇÃO DO ESTOQUE.
		*/
	cadeia mercadoria[10]={"ps4","ps4 Pro","xbox 360","xbox X Series","ps3","controle Xbox","Controle PS4","Pc Gamer","Controle PC","Teclado Gamer"}
     inteiro unidades [10] ={10,10,10,10,10,10,10,10,10,10}
     real preco [10] = {2000.15,4000.87,899.99,3000.50,900.45,120.99,140.99,129.01,200.99,140.99}
     cadeia continuar
     cadeia continuar2
     logico continua2 = verdadeiro
     inteiro codigo
     caracter pagamento = '0'
     real imposto
     inteiro qntd = 0
     cadeia comprador[2]
	inteiro x
	inteiro compras[10]
	real total = 0.0, parcelas = 0.0

	/*********************************
	************JOAQUIM***************
	**********************************/
     escreva("Bem Vindo a MIIJ Games, A maior loja de Games da internet!\n")
	// Continuar na loja
     enquanto(continua2) {
		// Peça nome e cpf do cliente
		escreva("Digite seu nome: \n")
		leia(comprador[0])
		escreva("Digite seu CPF: \n")
		leia(comprador[1])
     	
		// Liste os produtos a disposição
		escreva("Temos os seguintes produtos a sua disposição:\n")
	  	para(x = 0 ; x < 10; x++){
			escreva("\n",x+1,"- ",mercadoria[x]," o valor do produto R$",mat.arredondar(preco[x],2), " em estoque ", unidades[x])
			escreva("\n")
		}
		escreva("\n")
		escreva("Nossos estoques contam com 10 unidades de cada produto. Boas Compras!")
		
		// Popular carrinho de compras
    		logico continua = verdadeiro
		enquanto (continua) {
			// Pedir código do produto a ser comprado
			escreva("\nDigite o código do produto que deseja comprar\n")
			leia(codigo)
			se (codigo >= 1 e codigo <= 10) {
				// Decremento do valor de código para que se iguale ao indice da mercadoria
				codigo--
				// Loop até 10 para cobrir toda a lista de itens
				para(x = 0; x < 10; x++) {
					// Caso item seja encontrado, verifica se está disponível no estoque
					se (codigo == x e unidades[x] == 0) {				
						escreva("\nO produto não está disponível no estoque!\n")
					}
					senao se (codigo == x) {
						// Todo o início do loop, zerar a quantidade para que o usuário seja perguntado a qntd do produto
						qntd = 0
						enquanto (qntd > 10 ou qntd < 1) {
							escreva("\nDigite a quantidade que deseja\n")
							leia(qntd)
							se (qntd > 10 ou qntd < 1) {
								escreva("Digite uma quantidade válida do estode [1-10]\n")
							}
						}

						/*********************************
						************ISAC***************
						**********************************/
						// Caso a quantidade escolhida seja menor ou igual a quantidade de unidades em estoque,
						// adicionar a quantidade à compra e subtrair a quantidade das unidades em estoque
						se (qntd <= unidades[x]) {
							compras[x] = compras[x] + qntd
							unidades[x] = unidades[x] - qntd
							total += (preco[x] * qntd)
							escreva("Você selecionou " + qntd + " unidades de " + mercadoria[x] + "\n")
						} senao {
							escreva("Não há unidades o suficiente disponível em estoque.\n")
							escreva("Estoque: " + unidades[x] + " unidades de " + mercadoria[x] + "\n")
						}
					}
				}
			}


			/*********************************
			************MARIANA***************
			**********************************/
			senao {
				escreva("\nO código digitado não corresponde à um produto!")
			}
			para(x= 0; x < 10; x++) {
				// Loop pelo vetor de compras e confira, caso haja compras, imprimir a relação para o usuário
				se (compras[x] != 0) {
					escreva("\nExistem " + unidades[x] + " unidades restantes de " + mercadoria[x] + "\n")
				}
			}
			escreva("\nDeseja continuar comprando? Sim / Não\n")
			leia(continuar)
			limpa()
			// Alterar o valor da variável continua de verdadeiro para falso, caso o usuário decida não continuar comprando
			// fazendo assim que o loop do carrinho se quebre
			se (Texto.obter_caracter(continuar, 0) == 'N' ou Texto.obter_caracter(continuar, 0) == 'n') {
				continua = falso
			}
		}
		
		escreva("\nVocê finalizou suas compras!\n")
		escreva("Seu carrinho:\n\n")
		// Listar as compras no carrinho
		para (x = 0; x < 10; x++) {	
			se (compras[x] != 0) {
				escreva(compras[x] + " unidades de " + mercadoria[x] + "\n")
				escreva("\n------------------\n")
			}
		}
		// Calcular imposto e mostrar opções de pagamento
		imposto = total * 0.09
		escreva("O valor total de sua compra foi: R$ " + total + " e R$ " + imposto + " de impostos\n")
		escreva("Opções de pagamento: ")
		escreva("\n1 - Á vista em dinheiro ou cheque(20% de desconto)")
		escreva("\n2 - A vista no cartão de crédito(15% de desconto)")
		escreva("\n3 - Em duas vezes(sem desconto)")
		escreva("\n4 - 3x no cartão (10% de juros)\n")

		/*********************************
		**************IURI****************
		**********************************/
		// Pergunte a forma de pagamento até que seja respondido uma forma válida
		faca {
			escreva("Digite a forma de pagamento\n")
			leia(pagamento)
			se (pagamento == '1') {
				total = total - (total * 0.2)
			} senao se (pagamento == '2') {
				total = total - (total * 0.15)
			} senao se (pagamento == '3') {
				total = total
			} senao se (pagamento == '4') {
				total = total + (total * 0.1)
			} senao {
				escreva("\nEscolha uma forma de pagamento válida\n")
			}
		} enquanto (pagamento != '1' e pagamento != '2' e pagamento != '3' e pagamento != '4')
		/*
			NOME DA LOJA - CNPJ
			NOME DO COMPRADOR - CPF	
			Loop (valor de cada produto):
				quantidae - produto - valor do produto
			valor do imposto
			forma de pagamento
			valor total da nota
		*/
		limpa()
		escreva("---------------------------------------")
		escreva("\n\nMIIJ Games - 143.944.583/0001-52\n")
		escreva("\n------------------------------------\n")
		escreva("comprador "+comprador[0] + " - CPF: " + comprador[1] + "\n")
		para (x = 0; x < 10; x++) {
			se (compras[x] != 0) {
				escreva(compras[x] + "\t" + mercadoria[x] + "\t R$ " + preco[x] + "\n")
				escreva("\n")
			}
		}
		escreva("\n")
		escreva("\n")
		escreva("\n")
		escreva("Imposto de ICMS R$ " + mat.arredondar(imposto, 2) + "\n")
		escreva("\n------------------------------------\n")
		escreva("Total da nota: R$ " + mat.arredondar((total + imposto),2)+ "\n\n")
		escreva("--------------------------------------\n")
		
		
		se (pagamento == '3') {
			parcelas = total / 2
			escreva("Pagar em 2x de R$ " +mat.arredondar(parcelas,2) + "\n")
		} senao se (pagamento == '4') {
			parcelas = total / 3
			escreva("Pagar em 3x de R$ " + mat.arredondar(parcelas,2) + "\n")
		}
		escreva("Deseja comprar mais? Sim / Não \n")
		leia(continuar2)
     	se (Texto.obter_caracter(continuar2, 0) == 'N' ou Texto.obter_caracter(continuar2, 0) == 'n') {
     		continua2 = falso
     	}
	}
	}		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */