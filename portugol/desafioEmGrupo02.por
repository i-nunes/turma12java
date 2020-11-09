programa
{
	inclua biblioteca Matematica-->mat
	inclua biblioteca Texto
	inclua biblioteca Tipos
	
	funcao inicio()
	{	/*
		PROJETO
		ESPECIFICAÇÃO DE PROGRAMA:
		NOME DE LOJA: CADA GRUPO INVENTAR
		QUERO 10 PRODUTOS DIFERENTES – CADA GRUPO DEFINE
		QUERO SABE SE É LITRO, KG, QDE, PEÇA, UNIDADE – CONFORME O PRODUTO
		VALOR UNITARIO POR UNIDADE
		O ESTOQUE MINIMO DE SAIDA É 10 POR UNIDADE
		TUDO ISSO EM VETOR
		CRIAR UM CODIGO DE PRODUTO PARA CADA PRODUTO
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
     logico continua = verdadeiro
     inteiro codigo
     inteiro compras[10]
     real total = 0.0
     caracter pagamento = '0'
     real imposto
     inteiro qntd = 0
     cadeia comprador[2]
	inteiro x

     escreva("Bem Vindo a MIIJ Games, A maior loja de Games da internet!\n")
	// Continuar na loja
     enquanto(continua2) {
		// Peça nome e cpf do cliente
		escreva("Digite seu nome: \n")
		leia(comprador[0])
		escreva("Digite seu CPF: \n")
		leia(comprador[1])
     	
		escreva("Temos os seguintes produtos a sua disposição:\n")
	  	para(x = 0 ; x < 10; x++){
			escreva("\n",x+1,"- ",mercadoria[x]," o valor do produto R$",mat.arredondar(preco[x],2), " em estoque ", unidades[x])
			escreva("\n")
		}
		escreva("\n")
		escreva("Nossos estoques contam com 10 produtos de cada tipo. Boas Compras!")
		
		// Popular carrinho de compras
		enquanto (continua) {
			escreva("\nDigite o código do produto que deseja comprar\n")
			leia(codigo)
			se (codigo >= 1 ou codigo <= 10) {
				codigo--
				para(x = 0; x < 10; x++) {
					se (codigo == x e unidades[x] == 0) {				
						escreva("\nO produto não está disponível no estoque!\n")
					}
					senao se (codigo == x) {
						enquanto (qntd > 10 ou qntd < 1) {
							escreva("\nDigite a quantidade que deseja\n")
							leia(qntd)
							se (qntd > 10 ou qntd < 1) {
								escreva("Digite uma quantidade válida do estode [1-10]\n")
							}
						}
						se (qntd <= unidades[x]) {
							compras[x] = compras[x] + qntd
							unidades[x] = unidades[x] - qntd
							escreva("Você selecionou " + qntd + " unidades de " + mercadoria[x] + "\n")
						} senao {
							escreva("Não há unidades o suficiente disponível em estoque.\n") 
							escreva("Estoque: " + unidades[x] + " unidades de " + mercadoria[x] + "\n")
						}
					}
				}
			}
			senao {
				escreva("\nO código digitado não corresponde à um produto!")
			}
			para(x= 0; x < 10; x++) {
				se (compras[x] != 0) {
					escreva("\nVocê tem " + compras[x] + " unidades de " + mercadoria[x] + " custando: R$ " + preco[x])
					escreva("\nExistem " + unidades[x] + " unidades restantes de " + mercadoria[x] + "\n") 
					total += preco[x]
				}
			}
			escreva("\nDeseja continuar comprando? Sim / Não\n")
			leia(continuar)
			se (Texto.obter_caracter(continuar, 0) == 'N' ou Texto.obter_caracter(continuar, 0) == 'n') {
				continua = falso
			}
		}
		
		
		escreva("\nVocê finalizou suas compras!\n")
		escreva("Suas compras foram:\n")
		para (x = 0; x < 10; x++) {	
			escreva(compras[x] + " unidades de " + mercadoria[x] + "\n")
		}
		imposto = total * 0.09
		escreva("O valor total de sua compra foi: R$ " + total + "e R$ " + imposto + " de impostos")
		escreva("Escolha a forma de pagamento: ")
		escreva("\n1 - Á vista em dinheiro ou cheque(20% de desconto)")
		escreva("\n2 - A vista no cartão de crédito(15% de desconto)")
		escreva("\n3 - Em duas vezes(sem desconto)")
		escreva("\n4 - 3x no cartão (10% de juros)\n")
		leia(pagamento)
	
		enquanto (pagamento != '1' ou pagamento != '2' ou pagamento != '3' ou pagamento != '4') {
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
		}
		/*
			NOME DA LOJA - CNPJ
			NOME DO COMPRADOR - CPF
			Loop (valor de cada produto):
				quantidae - produto - valor do produto
			valor do imposto
			forma de pagamento
			valor total da nota
		*/
		escreva("MIIJ Games - 143.944.583/0001-52\n")
		escreva(comprador[0] + " - " + comprador[1])
		para (x = 0; x < 10; x++) {
			se (compras[x] != 0) {
				escreva(compras[x] + "\t" + mercadoria[x] + "\t R$ " + preco[x] + "\n")
			}
		}
		escreva("Imposto de ICMS R$ " + imposto + "\n")
		escreva("Total da nota: R$ " + (total + imposto) + "\n\n")

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
 * @POSICAO-CURSOR = 3733; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */