programa// PORTUGOL SOCCER
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt
	inclua biblioteca Teclado --> t
	inclua biblioteca Calendario --> c
	inclua biblioteca Tipos --> ti
	
	cadeia atleta = " ", sexo = " ", pais = " ", pe = " ", time_sorteado = " "
	inteiro n_caracteres_atleta, nacionalidade = 1, chute_teste1, chute_teste2, chute_teste3, pe_dominante, pontuacao_teste = 0, contador = 0, numero_camisa
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
		limpa()
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
	
		enquanto ( (sexo != "M" e sexo != "MASCULINO" e sexo != "HOMEM") e (sexo != "F" e sexo != "FEMININO" e sexo != "MULHER")){
			escreva("Sexo Inválido! Digite Novamente! \nSeu sexo: ")
			leia(sexo)
			sexo = txt.caixa_alta(sexo)
		}

		se(sexo == "M" ou sexo == "HOMEM"){
			sexo = "MASCULINO"
		}senao se(sexo == "F" ou sexo == "MULHER"){
			sexo = "FEMININO"
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
			escreva("Pé dominante selecionado com sucesso! O mesmo pé dominante do que o do Neymar Jr, a mágia brilha no seus pés jovem!\n")
			u.aguarde(600)
		}
		se ( pe_dominante == 2){
			pe = "esquerdo"
			escreva("Pé dominante selecionado com sucesso! O mesmo pé dominante do que o de Lionel Messi, que honra jovem gafanhoto!\n")
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
      	escreva("Argentina é uma ótima escolha jovem.")
      	pare
      caso 3:
      pais = "INGLATERRA"
      	escreva("Inglaterra a terra do melhor futebol do mundo! Escolha clássica jovem.")
      	pare
      caso 4:
      pais = "FRANCA"
      	escreva("França o país do craque Zinédine Zidane! Boa escolha meu amigo.")
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
		
		escreva("Vai começar o seu jogo teste para o profissional! Os testes vão envolver chute, passe e habilidade com os pés.\n")
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
			escreva("Boa jovem gafonhoto!! Ótimo gol, foi um gol de placa!\n")
			u.aguarde(700)
			enter()
			pontuacao_teste += 3
		}
		senao se(chute_teste1 == 3){
			escreva("Não foi desta vez caro amigo! Seu chute bateu na trave!\n")
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
		escreva("\n[ 1 ] Fazer um drible mágico\n[ 2 ] Dar uma carretilha\n[ 3 ] Cortar para o seu pé ", pe, " e chutar\n")
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
			escreva("Perfeita escolha ", atleta,". Você dribla o zagueiro deixando ele no chão! O seu técnico gostou muito da atitude, como o Neymar dizia \"Ousadia e Alegria!\"\n")
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
inteiro opcao_selecionada, probabilidade_acerto, placar_time = 0, placar_adversario = 0
real nota_partida = 0.0, media_partida
cadeia media
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

		escreva("O seu jogo vai começar em")aguarde()
		temporarizador(5)

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
		leia(opcao_selecionada)

		enquanto(opcao_selecionada > 3 ou opcao_selecionada < 1){
			escreva("Valor Inválido! Digite sua opção novamente: ")
			leia(opcao_selecionada)
		}
		
		probabilidade_acerto = u.sorteia(1, 2)

		u.aguarde(1500)
		limpa()
		aguarde()
		limpa()
		u.aguarde(1500)
		
		se(opcao_selecionada == 1){
			se (probabilidade_acerto == 1){
				escreva("Você cruzou para área e seu atacante matador faz o gol de cabeça!! Golaço ", atleta, "!\n")
				placar_time += 1
				nota_partida += 10.0
			}senao{
				escreva("Você cruza muito forte e a bola vai para fora. Não foi desta vez ", atleta, "!\n")
				nota_partida += 4.0
			}
		}
		senao se(opcao_selecionada == 2){
			se (probabilidade_acerto == 1){
				escreva("Você dribla o adversário com elástico, e chute de colocada no ângulo! Que jogada ", atleta, "!\n")
				placar_time += 1
				nota_partida += 10.0
			}senao{
				escreva("Você tentou dar uma carretilha mas ela bate na cabeça do adversário! Não foi desta vez ", atleta, "!\n")
				nota_partida += 4.5
			}
		}
		senao se(opcao_selecionada == 3){
			se (probabilidade_acerto == 1){
				escreva("Você corta para o meio e de trivela faz um golaço!! Gol de placa!! Parabéns ", atleta, "!\n")
				placar_time += 1
				nota_partida += 10.0
			}senao{
				escreva("Você corta para o meio mas o zagueiro intercepta e você perde a bola. Não desista ", atleta, "!\n")
				nota_partida += 3.0
			}
		}
		enter()
		limpa()
		
		escreva(txt.extrair_subtexto(time_sorteado, 0, 3)," ", placar_time, " X GAL ", placar_adversario,"\n")
		linha()
		escreva("\n========== SITUAÇÃO 2 ==========\n")
		escreva("Há um atacante habilidoso em sua frente")aguarde()
		u.aguarde(2000)
		limpa()

		escreva(txt.extrair_subtexto(time_sorteado, 0, 3)," ", placar_time, " X GAL ", placar_adversario,"\n")
		linha()
		escreva("\n========== SITUAÇÃO 2 ==========\n")
		escreva("Ele está em sua frente dentro da grande área ", atleta,". Oque você deseja fazer?")
		escreva("\n[ 1 ] Tentar roubar a bola\n[ 2 ] Dar um carrinho\n[ 3 ] Esperar e dar o bote\n")
		linha()
		escreva("Selecione sua opção: ")
		leia(opcao_selecionada)
	
		enquanto(opcao_selecionada > 3 ou opcao_selecionada < 1){
			escreva("Valor Inválido! Digite sua opção novamente: ")
			leia(opcao_selecionada)
		}
		
		probabilidade_acerto = u.sorteia(1, 3)

		u.aguarde(1500)
		limpa()
		aguarde()
		limpa()
		u.aguarde(1500)
		
		se(opcao_selecionada == 1){
			se (probabilidade_acerto > 1){
				escreva("Você tenta roubar a bola, e desarma com sucesso construindo um contra-ataque. Parábens ", atleta,"!\n")
				nota_partida += 9.0
			}senao{
				escreva("Você tenta roubar a bola, mas você erra o tempo do desarme e o adversário marca um golaço. Não foi desta vez ", atleta, "!\n")
				placar_adversario += 1
				nota_partida += 0.0
			}
		}
		senao se(opcao_selecionada == 2){
			se (probabilidade_acerto > 2){
				escreva("Você dá um carrinho, e é penâlti pro adversário. E eles convertem o penâlti e fazem o gol! Você tomou um cartão amarelo ", atleta, "! Seu técnico não gostou disso.\n")
				placar_adversario += 1
				nota_partida += -1.0
			}senao{
				escreva("Você da um carrinho estilo Sergio Ramos, e desarma o atacante. Que defesa raçuda ", atleta, "!\n")
				nota_partida += 8.0
			}
		}
		senao se(opcao_selecionada == 3){
			se (probabilidade_acerto > 1){
				escreva("Você espera o melhor momento para o bote. E tira a bola do atacante com sucesso! Parabéns ", atleta, "!\n")
				nota_partida += 8.0
			}senao{
				escreva("Você espera dar o bote, mas demorou. O atacante corta para direita e marca um gol na gaveta! Não foi desta vez ", atleta, "!\n")
				placar_adversario += 1
				nota_partida += 1.0
			}
		}
		enter()
		limpa()

		escreva(txt.extrair_subtexto(time_sorteado, 0, 3)," ", placar_time, " X GAL ", placar_adversario,"\n")
		linha()
		escreva("\n========== SITUAÇÃO 3 ==========\n")		
		escreva("Você está dentro da área")aguarde()
		u.aguarde(2000)
		limpa()
		
		escreva(txt.extrair_subtexto(time_sorteado, 0, 3)," ", placar_time, " X GAL ", placar_adversario,"\n")
		linha()
		escreva("\n========== SITUAÇÃO 3 ==========\n")
		escreva("E você sofre um pênalti!! Os jogadores concordam que você deve bater o pênalti!")aguarde()
		escreva("\n[ 1 ] Canto esquerdo\n[ 2 ] Meio\n[ 3 ] Canto Direito\n")
		linha()
		escreva("Selecione o canto aonde seu jogador irá chutar: ")
		leia(opcao_selecionada)
	
		enquanto(opcao_selecionada > 3 ou opcao_selecionada < 1){
			escreva("Valor Inválido! Digite sua opção novamente: ")
			leia(opcao_selecionada)
		}
		
		probabilidade_acerto = u.sorteia(1, 2)

		u.aguarde(1500)
		limpa()
		aguarde()
		limpa()
		u.aguarde(1500)
		
		se(opcao_selecionada == 1){
			se (probabilidade_acerto == 1){
				escreva("Você chuta no canto esquerdo. Mas a bola bate na trave! Não foi desta vez ", atleta, ". Que azar!")
				nota_partida += 2.0
			}senao{
				escreva("Você chuta na esquerda alto no canto da coruja! E faz um golaço!! Aí sim ", atleta, "! Parabéns!")
				placar_time += 1
				nota_partida += 10.0
			}
		}
		senao se(opcao_selecionada == 2){
			se (probabilidade_acerto == 1){
				escreva("Você chuta no meio, mas o goleiro agarra a bola! Não foi desta vez!")
				nota_partida += 1.0
			}senao{
				escreva("Você dá uma cavadinha sinistra, e faz um golaço ", atleta, "! Parabéns jogador!")
				placar_time += 1
				nota_partida += 10.0
			}
		}
		senao se(opcao_selecionada == 3){
			se (probabilidade_acerto == 1){
				escreva("Você chuta na direita rasteiro, e o goleiro como um gato pega a bola! Que azar ", atleta, "!")
				nota_partida += 2.0
			}senao{
				escreva("Você chuta na direita tirando do goleiro, e faz um golaço! Parabéns ", atleta)
				placar_time += 1
				nota_partida += 9.0
			}
		}
		escreva("\n")
		enter()
		limpa()

		media_partida = nota_partida / 3
		media = ti.real_para_cadeia(media_partida)
		media = txt.extrair_subtexto(media, 0, 3)

		aguarde()
		u.aguarde(2000)
		limpa()
		
		escreva(txt.extrair_subtexto(time_sorteado, 0, 3)," ", placar_time, " X GAL ", placar_adversario,"\n")
		linha()

		se(placar_time > placar_adversario){
			escreva("Vitória para o time do ", time_sorteado,"! Parábens pela vitória ",atleta)
		}
		senao se(placar_time < placar_adversario){
			escreva("Triste derrota ", atleta,". Vitória para o time do GALATASSARAY")
		}
		senao{
			escreva("Empate sofrido entre o ", time_sorteado," e o time russo GALATASSARAY")
		}


		escreva("!\nFim de jogo. Sua desempenho desta partida foi de ", media,"\n")

		u.aguarde(1500)
		
		se(media_partida > 8.0 e media_partida < 10.0){
			escreva("Expecional ", atleta, "! Parabéns pelo seu rendimento.")
		}
		senao se(media_partida > 6.0 e media_partida < 8.0){
			escreva("Razoavel meu jogador! Você foi uma peça fundamental para o time!")
		}
		senao se(media_partida > 1.0 e media_partida < 6.0){
			escreva("Seu desempenho foi ok! Você deve melhorar suas habiladades ", atleta)
		}
		senao se(media_partida < 1.0){
			escreva("Péssimo jogador o técnico Jeff não gostou nada da sua partida!")
		}
		senao se(media_partida == 10.0){
			escreva("Parábens ", atleta, "! Você supreendeu a comissão técnica. Continue assim que teremos o uma lenda do ", time_sorteado,"!")
		}
		escreva("\n")
		enter()
		limpa()
	
		aguarde()
		u.aguarde(1000)
		limpa()
		
		para (inteiro i = 0; i < 3; i++){
			se(i != 1){
			para(inteiro j=0; j <= 20; j++){
				escreva("==")
			}
			}senao{
				escreva("|         Este foi começo da sua        |\n")
				escreva("|           da sua Jornada do           |\n")
				escreva("|            Portugol Soccer!           |")
			}
			escreva("\n\n")
			}
		
		enter()
		
		u.aguarde(700)
		limpa()
		
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
funcao temporarizador(inteiro tempo){
		u.aguarde(1500)
		para(inteiro i = tempo ; i != -1; i--){
			limpa()
			escreva(i)
			u.aguarde(1000)
		}
		limpa()
}
funcao penalti(){
		para(inteiro i=0; i < 16; i++){
			se ( i == 0){
				para(inteiro j=0; j < 56; j++){
				escreva("_ ")
			}
			}senao{
				para(inteiro j=0; j < 56; j++){
				se ( j == 0 ou j == 55){
				escreva("| ")
				}senao{
					escreva("  ")
				}
			}
			}
			escreva("\n")
	}

		




		
}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 22087; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {sexo, 9, 22, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */