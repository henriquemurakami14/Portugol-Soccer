programa// PORTUGOL SOCCER
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inclua biblioteca Teclado --> te
	caracter enter
	cadeia atleta, sexo, pais
	inteiro n_caracteres_atleta, nacionalidade
	
	funcao inicio()
	{
		escreva("BEM VINDOS AO PORTUGOL SOCCER!\n")
		escreva("Digite ENTER para começar a jogar!")
		leia(enter)
		linha()
		u.aguarde(2000)
		limpa()
		escreva("Para começar") aguarde()
		escreva("\nDigite o nome do seu atleta: ")
		leia(atleta)
		n_caracteres_atleta = t.numero_caracteres(atleta)
		enquanto (n_caracteres_atleta == 1){
			escreva("Nome Inválido Seu Nome deve conter no minímo 2 caracteres! Digite Novamente! \nNome do seu atleta: ")
			leia(atleta)
			n_caracteres_atleta = t.numero_caracteres(atleta)
		}
		escreva("Nome feito com sucesso!")
		u.aguarde(1000)
		limpa()
		linha()
		escreva("Seu sexo [M ou F]: ")
		leia(sexo)
		sexo = t.extrair_subtexto(t.caixa_alta(sexo), 0, 1)
		
		enquanto ( sexo != "M" e sexo != "F"){
			escreva("Caracter Inválido! Digite Novamente! \nSeu sexo: ")
			leia(sexo)
		}

		escreva("Vamos ver aonde a mágica desses seus pés vem...")

		escreva("Digite sua Nacionalidade: ")
		leia(nacionalidade)
		escolha(nacionalidade){
      caso 1:
      pais = "BRASIL"
      pare
      
      caso 2:
      pais = "ARGENTINA"
      pare
      
      caso 3:
      pais = "INGLATERRA"
      pare
      
      caso 4:
      pais = "FRANCA"
      pare
      
      caso 5:
      pais = "ALEMANHA"
      pare
      
      caso 6:
      pais = "ESPANHA"
      pare
      
		}
	}

	funcao linha(){
		limpa()
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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */