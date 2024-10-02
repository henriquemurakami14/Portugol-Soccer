programa// PORTUGOL SOCCER
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt
	inclua biblioteca Teclado --> t
	inclua biblioteca Calendario --> c
	
	cadeia atleta = " ", sexo = " ", pais = " ", pe = " ", time_sorteado = " "
	inteiro n_caracteres_atleta, nacionalidade = 0, chute_teste1, chute_teste2, chute_teste3, pe_dominante, pontuacao_teste = 0, contador = 0, numero_camisa
	cadeia time_sorteado_brasil[3] = {"PALMEIRAS", "FLAMENGO", "CORINTHIANS"}
	cadeia time_sorteado_argentina[3] = {"BOCA JUNIORS", "RIVER PLATE", "LANUS"}
	cadeia time_sorteado_inglaterra[3] = {"CHELSEA", "ARSENAL", "MANCHESTER UNITED"}
	cadeia time_sorteado_franca[3] = {"PARIS SAINT GERMAIN", "MONACO", "LYON"}
	cadeia time_sorteado_alemanha[3] = {"BORRUSIA DORTMUND", "BAYERN DE MUNIQUE", "BAYERN DE LEVERKUSEN"}
	cadeia time_sorteado_espanha[3] = {"BARCELONA", "REAL MADRID", "ATLETICO DE MADRID"}
	
	funcao inicio()
{
		start() 
		
		dados_jogador()

		partida_teste()
		
		time_selecionado()

		numero_camisa_funcao()

		torneio_pretemporada()
}





funcao start(){
		para (inteiro i = 0; i < 3; i++){
			se(i != 1){
			para(inteiro j=0; j <= 19; j++){
				escreva("==")
			}
			}senao{
				escreva("|           PORTUGOL SOCCER           |\n")
				escreva("|            BEM - VINDOS             |")
			}
			escreva("\n")
			}
		linha()
		enter()
		
		u.aguarde(700)
}


	
funcao dados_jogador(){
		linha()
		u.aguarde(1000)
		
		escreva("Para começar") aguarde()
		escreva("Digite o nome do seu atleta: ")
		leia(atleta)
		n_caracteres_atleta = txt.numero_caracteres(atleta)
		
		enquanto (n_caracteres_atleta == 1 ou n_caracteres_atleta > 26){
			escreva("Nome Inválido! Digite Novamente! \nNome do seu atleta: ")
			leia(atleta)
			n_caracteres_atleta = txt.numero_caracteres(atleta)
		}
		
		atleta = txt.caixa_alta(txt.extrair_subtexto(atleta, 0, 1)) + txt.caixa_baixa(txt.extrair_subtexto(atleta, 1, n_caracteres_atleta))
		escreva("Nome feito com sucesso!")
		
		u.aguarde(1000)
		limpa()
		linha()
		
		escreva("Seu sexo [M ou F]: ")
		leia(sexo)
		sexo = txt.caixa_alta(sexo)
		
		enquanto ( (sexo != "M" e sexo != "MASCULINO") e (sexo != "F" e sexo != "FEMININO")){
			escreva("Caracter Inválido! Digite Novamente! \nSeu sexo: ")
			leia(sexo)
			sexo = txt.caixa_alta(sexo)
		}
		escreva("Sexo definido com sucesso!")
		
		u.aguarde(1000)
		limpa()
		linha()
		u.aguarde(700)

		escreva("Por onde vem a mágia desses seus pés: \n")
		escreva("[ 1 ] Direito\n[ 2 ] Esquerdo\n")
		escreva("Digite o seu pé dominante: ")
		leia(pe_dominante)

		enquanto(pe_dominante != 1 e pe_dominante != 2){
			escreva("Valor Inválido! Digite novamente: ")
			escreva("Digite o seu pé dominante: ")
			leia(pe_dominante)
		}

		u.aguarde(600)

		se ( pe_dominante == 1){
			pe = "direito"
			escreva("Pé dominante selecionado com sucesso! O mesmo pé dominante do que o de Neymar Jr, a mágia brilha no seus pés!\n")
			u.aguarde(600)
		}
		se ( pe_dominante == 2){
			pe = "esquerdo"
			escreva("Pé dominante selecionado com sucesso! O mesmo pé dominante do que o Lionel Messi, que honra jovem!\n")
			u.aguarde(600)
		}

		enter()
		limpa()
		linha()
		
		escreva("Vamos ver aonde a mágica desses seus pés vem...")
		u.aguarde(1100)
		escreva("\n[ 1 ] Brasil\n[ 2 ] Argentina\n[ 3 ] Inglaterra\n[ 4 ] França\n[ 5 ] Alemanha\n[ 6 ] Espanha\n")
		linha()
		escreva("\nDigite sua Nacionalidade: ")
		leia(nacionalidade)
		
		u.aguarde(700)

		enquanto(nacionalidade > 6 ou nacionalidade < 1){
			escreva("Valor inválido! Digite novamente sua nacionalidade: ")
			leia(nacionalidade)
		}
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
}

funcao partida_teste(){
		linha()
		
		escreva("Vai começar o seu jogo teste para o profissional!")
		escreva(" Os testes vão envolver chute, passe e habilidade com os pés.\n")
		enter()
		
		limpa()
		linha()

		escreva("        TESTE 01\n")
		linha()
		escreva("A bola está parada no centro da grande área") aguarde()
		u.aguarde(800)
		escreva("Você deseja chutar aonde???")
		escreva("\n[ 1 ] Chute no ângulo\n[ 2 ] Chute rasteiro\n[ 3 ] Chute colocado no canto\n")
		linha()
		escreva("Digite sua opção: ")
		leia(chute_teste1)

		enquanto(chute_teste1 > 3 ou chute_teste1 < 1){
			escreva("Valor inválido! Digite novamente sua escolha: ")
			leia(chute_teste1)
		}
		
		limpa()
		linha()
		aguarde()
		
		se(chute_teste1 == 1 ou chute_teste1 == 2){
			escreva("BOA jovem gafonhoto!! Ótimo gol foi um gol de placa!\n")
			u.aguarde(700)
			enter()
			pontuacao_teste += 3
		}
		senao se(chute_teste1 == 3){
			escreva("Não foi dessa fez caro amigo! Seu chute bateu na trave!\n")
			u.aguarde(700)
			enter()
			pontuacao_teste += 1
		}
		limpa()
		linha()

		escreva("        TESTE 02\n")
		linha()
		escreva("Você está no meio do campo com a bola sobe os seus pés") aguarde()
		u.aguarde(800)
		escreva("Você deseja passar aonde???")
		escreva("\n[ 1 ] Passar para o volante a sua direita\n[ 2 ] Cruzar para o ponta esquerda\n[ 3 ] Passar a bola para o zagueiro atrás\n")
		linha()
		escreva("Digite sua opção: ")
		leia(chute_teste2)

		enquanto(chute_teste2 > 3 ou chute_teste2 < 1){
			escreva("Valor inválido! Digite novamente sua escolha: ")
			leia(chute_teste2)
		}
		
		limpa()
		linha()
		aguarde()

		se(chute_teste2 == 1){
			escreva("Boa escolha meu atleta! Porém o volante infelizmente estava marcado, não foi desta vez..\n")
			u.aguarde(1000)
			enter()
			pontuacao_teste += 2
		}
		senao se(chute_teste2 == 2){
			escreva("Escolha arriscada meu jogador! Ousadia sempre nos pés, o seu ponta consegue pegar a bola e marca um gol de placa! Parabéns ", atleta,"!\n")
			u.aguarde(1000)
			enter()
			pontuacao_teste += 3
		}
		senao se(chute_teste2 == 3){
			escreva("Seu técnico não gostou nada disso jovem gafanhoto... Você passa para o zagueiro e o seu time perde a chance de contra-atacar.\n")
			u.aguarde(1000)
			enter()
			pontuacao_teste += 1
		}
		limpa()
		linha()

		escreva("        TESTE 03\n")
		linha()
		escreva("Você está chegando na grande área com a bola aos seus pés, há um zagueiro na sua frente") aguarde()
		u.aguarde(800)
		escreva("\nOque você deseja fazer??")
		escreva("\n[ 1 ] Fazer um drible mágico deixando o zagueiro no chão\n[ 2 ] Dar uma carretilha\n[ 3 ] Cortar para o seu pé ", pe, " e chutar\n")
		linha()
		escreva("Digite sua opção: ")
		leia(chute_teste3)

		enquanto(chute_teste3 > 3 ou chute_teste3 < 1){
			escreva("Valor inválido! Digite novamente sua escolha: ")
			leia(chute_teste3)
		}
		
		limpa()
		linha()
		aguarde()

		se(chute_teste3 == 1){
			escreva("Perfeita escolha ", atleta,"! O seu técnico gostou muito da atitude como o Neymar dizia \"Ousadia e Alegria!\"\n")
			u.aguarde(700)
			enter()
			pontuacao_teste += 3
		}
		senao se(chute_teste3 == 2){
			escreva("Que carretilha linda rapaz!! Você dribla o zagueiro, fica cara-cara com o gol e faz um golaço! Parábens ", atleta, "\n")
			u.aguarde(700)
			enter()
			pontuacao_teste += 3
		}
		senao se(chute_teste3 == 3){
			escreva("Foi por pouco jovem! Você corta para seu pé ", pe, " com sucesso e chuta na trave.. Que pecado!\n")
			u.aguarde(700)
			enter()
			pontuacao_teste += 1
		}
		
		limpa()
		linha()

		escreva("Os seus testes finalizaram jovem gafanhoto! Vamos descobrir o seus resultados")
		aguarde()

		se (pontuacao_teste == 9){
			escreva("Excepcional ", atleta, "! Parábens seus resultados impressionaram muito os olheiros jovem gafanhoto!")
		}
		senao se (pontuacao_teste == 3){
			escreva("Não foi o esperado ", atleta, "! Porém não desista jovem, vai haver dias de muitas glórias para ti!")
		}
		senao{
			escreva("Ótimo jovem!! Seus resultados chamaram a atenção de alguns clubes!")
		}
		escreva("\n")

		u.aguarde(1000)
		enter()
		limpa()
}

funcao time_selecionado(){
		linha()

		escreva("Jovem então vamos ver quais clubes impressionaram o seu futebol arte! Aguarde uns instantes para nós verificarmos")
		aguarde()
		u.aguarde(1000)

		se (nacionalidade == 1){
			time_sorteado = time_sorteado_brasil[u.sorteia(1, 3) - 1]
			para( inteiro i = 0; i <= 3; i++){
				se(i == 3){
					i = 0
					contador += 1
				}
				se(contador == 15){
					pare
				}
				escreva(time_sorteado_brasil[i])
				u.aguarde(50)
				limpa()
			}
		}
		senao se (nacionalidade == 2){
			time_sorteado = time_sorteado_argentina[u.sorteia(1, 3) - 1]
			para( inteiro i = 0; i <= 3; i++){
				se(i == 3){
					i = 0
					contador += 1
				}
				se(contador == 15){
					pare
				}
				escreva(time_sorteado_argentina[i])
				u.aguarde(50)
				limpa()
			}	
		}
		senao se (nacionalidade == 3){
			time_sorteado = time_sorteado_inglaterra[u.sorteia(1, 3) - 1]
			para( inteiro i = 0; i <= 3; i++){
				se(i == 3){
					i = 0
					contador += 1
				}
				se(contador == 15){
					pare
				}
				escreva(time_sorteado_inglaterra[i])
				u.aguarde(50)
				limpa()
			}	
		}
		senao se (nacionalidade == 4){
			time_sorteado = time_sorteado_franca[u.sorteia(1, 3) - 1]
			para( inteiro i = 0; i <= 3; i++){
				se(i == 3){
					i = 0
					contador += 1
				}
				se(contador == 15){
					pare
				}
				escreva(time_sorteado_franca[i])
				u.aguarde(50)
				limpa()
			}	
		}
		senao se (nacionalidade == 5){
			time_sorteado = time_sorteado_alemanha[u.sorteia(1, 3) - 1]
			para( inteiro i = 0; i <= 3; i++){
				se(i == 3){
					i = 0
					contador += 1
				}
				se(contador == 15){
					pare
				}
				escreva(time_sorteado_alemanha[i])
				u.aguarde(50)
				limpa()
			}	
		}
		senao se (nacionalidade == 6){
			time_sorteado = time_sorteado_espanha[u.sorteia(1, 3) - 1]
			para( inteiro i = 0; i <= 3; i++){
				se(i == 3){
					i = 0
					contador += 1
				}
				se(contador == 15){
					pare
				}
				escreva(time_sorteado_espanha[i])
				u.aguarde(50)
				limpa()
			}	
		}
		linha()
		escreva("Carregando")
		aguarde()
		escreva("O ", time_sorteado, " gostou muito do seu futebol e dos seus talentos com os pés e quer te contratar!\n")
		u.aguarde(700)
		enter()
		limpa()
}

funcao numero_camisa_funcao(){
		linha()
		
		escreva("Agora você faz parte do ", time_sorteado," que responsabilidade em jovem gafanhoto eim!\n")
		escreva("Então temos que decidir algumas coisas ", atleta)
		aguarde()
		enter()
		limpa()
		escreva("É muito importante estarmos trajados como diria Romário. Então precisamos definir seu visual para você ficar no estilo!\n")
		u.aguarde(700)
		enter()
		limpa()
		linha()
		escreva("Digite o número da camisa que você vai utilizar nesta temporada: ")
		leia(numero_camisa)
		enquanto(numero_camisa > 99 ou numero_camisa < 0){
			se(numero_camisa > 99){
			escreva("Sua camisa deve conter no máximo 2 dígitos.")}
			se(numero_camisa < 0){
			escreva("Sua camisa não pode ter números negativos!")}
			escreva(" Digite novamente: ")
			leia(numero_camisa)
		}
		escreva("\nNúmero da camisa selecionado com sucesso! Agora vai começar o torneio de pré-temporada")
		aguarde()
		
		enter()
		limpa()
}
funcao torneio_pretemporada(){
inteiro situacao_1, probabilidade_situacao_1, placar_time = 0, placar_adversario = 0 
		linha()
		escreva("|           Portugol World Cup           |\n\n")
		escreva("Bem-vindo ao nosso torneio de pré-temporada")aguarde()
		u.aguarde(2000)

		limpa()
		linha()

		escreva("O ", time_sorteado, " jogará contra o Galatasaray!\n")
		escreva("Prepare-se será a sua estreia no profissional jovem ganhafato!!\n")
		escreva("Você está pronto para essa longa jornada?\n\n")

		enter()
		limpa()
		linha()

		escreva(time_sorteado, " x GALATASARAY. ", c.hora_atual(falso), ":00 HORAS - ", c.dia_mes_atual(),"/", c.mes_atual(),"/",c.ano_atual(),"\n\n")
		enter()
		limpa()

		//escreva("O seu jogo vai começar em")
		//temporarizador()

		escreva("Começou o Jogo!! Rola a bola!\n")
		u.aguarde(1500)

		limpa()
		escreva(time_sorteado, " x GALATASARAY. ", c.hora_atual(falso), ":00 HORAS - ", c.dia_mes_atual(),"/", c.mes_atual(),"/",c.ano_atual(),"\n")
		linha()

		escreva("\n========== SITUAÇÃO 1 ==========\n")
		escreva("Você está correndo com a bola no corredor")aguarde()
		u.aguarde(2000)
		limpa()
		
		escreva(time_sorteado, " x GALATASARAY. ", c.hora_atual(falso), ":00 HORAS - ", c.dia_mes_atual(),"/", c.mes_atual(),"/",c.ano_atual(),"\n")
		linha()
		escreva("\n========== SITUAÇÃO 1 ==========\n")
		escreva("Você chegou na linha do escanteio. Oque você deseja fazer?")
		escreva("\n[ 1 ] Cruzar para a grande área\n[ 2 ] Driblar o advérsário\n[ 3 ] Cortar para o meio e chutar no gol\n")
		linha()
		escreva("Selecione sua opção: ")
		leia(situacao_1)

		enquanto(situacao_1 > 3 ou situacao_1 < 1){
			escreva("Valor Inválido! Digite sua opção novamente: ")
			leia(situacao_1)
		}
		
		probabilidade_situacao_1 = u.sorteia(1, 2)

		u.aguarde(1500)
		limpa()
		aguarde()
		limpa()
		u.aguarde(1500)
		
		se(situacao_1 == 1){
			se (probabilidade_situacao_1 == 1){
				escreva("Você cruzou para área e seu atacante matador faz o gol de cabeça!! Golaço ", atleta, "!\n")
				placar_time += 1
			}senao{
				escreva("Você cruza muito forte e a bola vai para fora. Não foi desta vez ", atleta, "!\n")
			}
			enter()
			limpa()
		}
		se(situacao_1 == 2){
			se (probabilidade_situacao_1 == 1){
				escreva("Você dribla o adversário com elástico, e chute de colocada no ângulo! Que jogada ", atleta, "!\n")
				placar_time += 1
			}senao{
				escreva("Você tentou dar uma carretilha mas ela bate na cabeça do adversário! Não foi desta vez ", atleta, "!\n")
			}
			enter()
			limpa()
		}
		se(situacao_1 == 3){
			se (probabilidade_situacao_1 == 1){
				escreva("Você corta para o meio e de trivela faz um golaço!! Gol de placa!! Parabéns ", atleta, "!\n")
				placar_time += 1
			}senao{
				escreva("Você corta para o meio mas o zagueiro intercepta e você perde a bola. Não desista ", atleta, "!\n")
			}
			enter()
			limpa()
		}

		escreva(txt.extrair_subtexto(time_sorteado, 0, 3)," ", placar_time, " X GAL ", placar_adversario,"\n")
		linha()
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
		escreva("\n")
	}
//funcao inteiro temporarizador()
		
	
} 

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14563; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */