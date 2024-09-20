programa// PORTUGOL SOCCER
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt
	inclua biblioteca Teclado --> t
	
	cadeia atleta, sexo, pais
	inteiro n_caracteres_atleta, nacionalidade, chute_teste1
	
	funcao inicio()
{
		escreva("BEM VINDOS AO PORTUGOL SOCCER!\n")
		linha()
		enter()
		
		u.aguarde(700)
		limpa()
		linha()
		u.aguarde(1000)
		
		escreva("Para começar") aguarde()
		escreva("\nDigite o nome do seu atleta: ")
		leia(atleta)
		n_caracteres_atleta = txt.numero_caracteres(atleta)
		
		enquanto (n_caracteres_atleta == 1){
			escreva("Nome Inválido Seu Nome deve conter no minímo 2 caracteres! Digite Novamente! \nNome do seu atleta: ")
			leia(atleta)
			n_caracteres_atleta = txt.numero_caracteres(atleta)
		}
		escreva("Nome feito com sucesso!")
		
		u.aguarde(1000)
		limpa()
		linha()
		
		escreva("Seu sexo [M ou F]: ")
		leia(sexo)
		sexo = txt.extrair_subtexto(txt.caixa_alta(sexo), 0, 1)
		
		enquanto ( sexo != "M" e sexo != "F"){
			escreva("Caracter Inválido! Digite Novamente! \nSeu sexo: ")
			leia(sexo)
		}
		
		u.aguarde(1000)
		limpa()
		linha()
		u.aguarde(700)
		
		escreva("Vamos ver aonde a mágica desses seus pés vem...")
		escreva("\n[ 1 ] Brasil\n[ 2 ] Argentina\n[ 3 ] Inglaterra\n[ 4 ] França\n[ 5 ] Alemanha\n[ 6 ] Espanha\n")
		linha()
		escreva("\nDigite sua Nacionalidade: ")
		leia(nacionalidade)
		
		u.aguarde(700)
		
		escolha(nacionalidade){
      caso 1:
      pais = "BRASIL"
    	 	escreva("Brasil o país do futebol arte! Ótima escolha jovem gafanhoto.")
    	 	pare
      caso 2:
      pais = "ARGENTINA"
      	escreva("Argentina uma ótima escolha jovem amigo.")
      	pare
      caso 3:
      pais = "INGLATERRA"
      	escreva("Inglaterra a terra do melhor futebol do mundo atualmente! Escolha clássica jovem.")
      	pare
      caso 4:
      pais = "FRANCA"
      	escreva("França o país do croissant! Boa escolha meu amigo.")
      	pare
      caso 5:
      pais = "ALEMANHA"
      	escreva("Alemanha um país diferente dos iguais! Uma escolha exótica meu atleta.")
      	pare
      caso 6:
      pais = "ESPANHA"
      	escreva("Espanha o país onde muitas estrelas nascem! Uma escolha perfeita meu caro amigo.")
      	pare
		}

		u.aguarde(3000)
		limpa()
		linha()

		escreva("Vamos começar o seu teste para o profissional!")
		escreva(" Os testes vão envolver força, passe e habilidade com os pés.\n")
		enter()
		
		limpa()
		linha()

		escreva("        TESTE 01\n")
		linha()
		escreva("A bola está parando no centro da grade área") aguarde()
		escreva("\nVocê deseja chutar aonde???")
		escreva("\n[ 1 ] Chute no ângulo\n[ 2 ] Chute rasteiro\n[ 3 ] Chute colocado no canto\n")
		linha()
		escreva("Digite sua opção: ")
		leia(chute_teste1)
		


		
}
	funcao enter(){
		cadeia enter
		escreva("Pressione ENTER para continuar...\n")
 			leia(enter)
  		enquanto (enter != ""){
    	 		escreva("Apenas pressione ENTER!")
     		leia(enter)
  		}
	}
	funcao linha(){
		para(inteiro i = 0 ; i < 20; i++){
		escreva("=-=")
		}
		escreva("\n")
	}
	funcao aguarde(){
		para(inteiro i =0 ; i < 3 ; i++){
			escreva(".")
			u.aguarde(600)
		}
	}
	
}
