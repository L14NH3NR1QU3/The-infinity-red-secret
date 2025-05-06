programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u
	inclua biblioteca Arquivos --> a
	inclua biblioteca Mouse --> m
	inclua biblioteca Graficos --> g

	logico saida = verdadeiro
	logico volta = verdadeiro

	const inteiro guardaRoupaHumano = 4
	const inteiro guardaRoupaElfo = 4
	const inteiro guardaRoupaAnao = 2

	const cadeia racaEn[3] = {"ELF", "DWARF", "HUMAN"}
	const cadeia racaPt[3] = {"ELFO", "ANÃO", "HUMANO"}

	const cadeia caminhoInicial = "./game/play"
	const cadeia caminhoGame = "./game/play/jogoIniciado"
	const cadeia caminhoRaca = "./game/play/raça_escolhido"
	const cadeia caminhoSexRaca = "./game/play/genero_escolhido"
	const cadeia caminhoStatus = "./game/play/status"
	const cadeia caminhoCorRaca = "./game/play/CorRaca_escolhido"
	const cadeia caminhoLingua = "./game/play/Linguagem"
	
	const cadeia trenerCharacterImage = "./game/playersCharacter/NPCs/treiner.png"
	const cadeia trenerConversa = "./game/playersCharacter/NPCs/Conversa"
	
	const cadeia caminhoLevel = "./game/Player/level"
	const cadeia level = "./game/Player/level/lvl"
	const cadeia experiencia = "./game/Player/level/xp"
	const cadeia pontos = "./game/Player/level/pt"

	const cadeia caminhoEscRoupa = "./game/Player/Roupa"

	const cadeia caminhoRoupasHumanoFemea[guardaRoupaHumano] = {"./game/playersCharacter/Roupas/armadura_chifre_femea.png", "./game/playersCharacter/Roupas/armadura_caveira_femea.png", "./game/playersCharacter/Roupas/armadura_esqueleto_femea.png", "./game/playersCharacter/Roupas/templario_femea.png"}
	const cadeia caminhoRoupasHumanoMacho[guardaRoupaHumano] = {"./game/playersCharacter/Roupas/armadura_chifre_macho.png", "./game/playersCharacter/Roupas/armadura_caveira_macho.png", "./game/playersCharacter/Roupas/armadura_esqueleto_macho.png", "./game/playersCharacter/Roupas/templario_macho.png"}

	const cadeia caminhoRoupasElfoFemea[guardaRoupaElfo] = {"./game/playersCharacter/Roupas/elfo_diurno_femea.png", "./game/playersCharacter/Roupas/cultista_femea.png", "./game/playersCharacter/Roupas/elfo_noturno_femea.png", "./game/playersCharacter/Roupas/elfa_bruxa.png"}
	const cadeia caminhoRoupasElfoMacho[guardaRoupaElfo] = {"./game/playersCharacter/Roupas/elfo_diurno_macho.png", "./game/playersCharacter/Roupas/cultista_macho.png", "./game/playersCharacter/Roupas/elfo_noturno_macho.png", "./game/playersCharacter/Roupas/elfo_bruxo.png"}

	const cadeia caminhoRoupasAnaoFemea[guardaRoupaAnao] = {"./game/playersCharacter/Roupas/anão_tipo_namari_femea.png", "./game/playersCharacter/Roupas/anao_moicano_femea_disfarce.png"}
	const cadeia caminhoRoupasAnaoMacho[guardaRoupaAnao] = {"./game/playersCharacter/Roupas/anão_tipo_senshi_macho.png", "./game/playersCharacter/Roupas/anao_moicano.png"}

	const cadeia caminhoPlacaTitulo = "./game/interface/menu/placa_para_titulo.png"
	const cadeia caminhoNomeJogo1 = "./game/interface/menu/nome_jogo_1.png"
	const cadeia caminhoNomeJogo2 = "./game/interface/menu/nome_jogo_2.png"

	const cadeia caminhoBackGroundMenu = "./game/interface/menu/background_menu.png"

	const cadeia caminhoBotaoNoboJogo = "./game/interface/botões/botao_novo_jogo.png"
	const cadeia caminhoBotaoNovoJogoPressionado = "./game/interface/botões/botao_novo_jogo_pressionado.png"
	const cadeia caminhoBotaoContinuar = "./game/interface/botões/botao_continuar.png"
	const cadeia caminhoBotaoContinuarPressionado = "./game/interface/botões/botao_continuar_pressionado.png"
	const cadeia caminhoBotaoSaida = "./game/interface/botões/botao_saida.png"
	const cadeia caminhoBotaoSaidaPressionado = "./game/interface/botões/botao_saida_pressionado.png"
	const cadeia caminhoBotaoVoltar = "./game/interface/botões/botao_voltar.png"
	const cadeia caminhoBotaoVoltarPressionado = "./game/interface/botões/botao_voltar_pressionado.png"
	const cadeia caminhoBotaoPlay = "./game/interface/botões/botao_play.png"
	const cadeia caminhoBotaoPlayPressionado = "./game/interface/botões/botao_play_pressionado.png"
	
	const cadeia caminhoBotaoCorRaca[7] = {"./game/interface/botões/botao_cor_raca_elfo.png", "./game/interface/botões/botao_cor_raca_anao.png", "./game/interface/botões/botao_cor_raca_caveira.png", "./game/interface/botões/botao_cor_raca_templario.png", "./game/interface/botões/botao_cor_raca_vampiro.png", "./game/interface/botões/botao_cor_raca_ocultista.png", "./game/interface/botões/botao_cor_raca_bruxo.png"}
	const cadeia caminhoBotaoSkinRacaDireito[7] = {"./game/interface/botões/botao_elfo_r.png", "./game/interface/botões/botao_ocultista_r.png", "./game/interface/botões/botao_bruxo_r.png", "./game/interface/botões/botao_caveira_r.png", "./game/interface/botões/botao_anao_r.png", "./game/interface/botões/botao_castelo_r.png", "./game/interface/botões/botao_vampiro_r.png"}
	const cadeia caminhoBotaoSkinRacaEsquerdo[7] = {"./game/interface/botões/botao_elfo_l.png", "./game/interface/botões/botao_ocultista_l.png", "./game/interface/botões/botao_bruxo_l.png", "./game/interface/botões/botao_caveira_l.png", "./game/interface/botões/botao_anao_l.png", "./game/interface/botões/botao_castelo_l.png", "./game/interface/botões/botao_vampiro_l.png"}
	const cadeia caminhoBotaoEscRaca[14] = {"./game/interface/botões/botao_elf.png", "./game/interface/botões/botao_elf_pressionado.png", "./game/interface/botões/botao_castelo.png", "./game/interface/botões/botao_castelo_pressionado.png", "./game/interface/botões/botao_vampiro.png", "./game/interface/botões/botao_vampiro_pressionado.png", "./game/interface/botões/botao_bruxo.png", "./game/interface/botões/botao_bruxo_pressionado.png", "./game/interface/botões/botao_caverna.png", "./game/interface/botões/botao_caverna_pressionado.png", "./game/interface/botões/botao_caveira.png", "./game/interface/botões/botao_caveira_pressionado.png", "./game/interface/botões/botao_ocultista.png", "./game/interface/botões/botao_ocultista_pressionado.png"}

	const cadeia caminhoBotaoEn = "./game/interface/botões/en.png"
	const cadeia caminhoBotaoPt = "./game/interface/botões/pt.png"

	const cadeia caminhoElfDiurnoBackground = "./game/interface/background_racas/elf_diurno_background.png"
	const cadeia caminhoHumanoTemplarioBackground = "./game/interface/background_racas/templario_background.png"
	const cadeia caminhoAnaoBackground = "./game/interface/background_racas/anao_background.png"
	const cadeia caminhoHumanoCaveiraBackground = "./game/interface/background_racas/caveira_background.png"
	const cadeia caminhoElfOcultistaBackground = "./game/interface/background_racas/ocultista_background.png"
	const cadeia caminhoVampiroBackground = "./game/interface/background_racas/elfo_vampiro_background.png"
	const cadeia caminhoAnaoMoicanoBackground = "./game/interface/background_racas/anao_moicano_background.png"
	const cadeia caminhoElfoBruxoBackground = "./game/interface/background_racas/bruxo_background.png"

	const cadeia caminhoBotaoTreino = "./game/interface/botões/botao_treino.png"
	const cadeia caminhoBotaoTreinoPressionado = "./game/interface/botões/botao_treino_pressionado.png"
	
	const inteiro larguraJanela = 640
	const inteiro alturaJanela = 640

	inteiro coresPele[3] = {g.criar_cor(255, 230, 175), g.criar_cor(240, 175, 125), g.criar_cor(150, 100, 50)}

	inteiro treinerCharacter = g.carregar_imagem(trenerCharacterImage)

	inteiro humanMachoRoupa[guardaRoupaHumano] = {g.carregar_imagem(caminhoRoupasHumanoMacho[3]), g.carregar_imagem(caminhoRoupasHumanoMacho[2]), g.carregar_imagem(caminhoRoupasHumanoMacho[1]), g.carregar_imagem(caminhoRoupasHumanoMacho[0])}
	inteiro humanFemeaRoupa[guardaRoupaHumano] = {g.carregar_imagem(caminhoRoupasHumanoFemea[3]), g.carregar_imagem(caminhoRoupasHumanoFemea[2]), g.carregar_imagem(caminhoRoupasHumanoFemea[1]), g.carregar_imagem(caminhoRoupasHumanoFemea[0])}

	inteiro elfoMachoRoupa[guardaRoupaElfo] = {g.carregar_imagem(caminhoRoupasElfoMacho[0]), g.carregar_imagem(caminhoRoupasElfoMacho[1]), g.carregar_imagem(caminhoRoupasElfoMacho[2]), g.carregar_imagem(caminhoRoupasElfoMacho[3])}
	inteiro elfoFemeaRoupa[guardaRoupaElfo] = {g.carregar_imagem(caminhoRoupasElfoFemea[0]), g.carregar_imagem(caminhoRoupasElfoFemea[1]), g.carregar_imagem(caminhoRoupasElfoFemea[2]), g.carregar_imagem(caminhoRoupasElfoFemea[3])}

	inteiro anaoFemeaRoupa[2] = {g.carregar_imagem(caminhoRoupasAnaoFemea[0]), g.carregar_imagem(caminhoRoupasAnaoFemea[1])}
	inteiro anaoMachoRoupa[2] = {g.carregar_imagem(caminhoRoupasAnaoMacho[0]), g.carregar_imagem(caminhoRoupasAnaoMacho[1])}

	inteiro backGroundMenu = g.carregar_imagem(caminhoBackGroundMenu)

	inteiro botaoEn = g.carregar_imagem(caminhoBotaoEn)
	inteiro botaoPt = g.carregar_imagem(caminhoBotaoPt)

	inteiro BotaoNovoJogo = g.carregar_imagem(caminhoBotaoNoboJogo)
	inteiro BotaoNovoJogoPressionado = g.carregar_imagem(caminhoBotaoNovoJogoPressionado)
	inteiro BotaoContinuar = g.carregar_imagem(caminhoBotaoContinuar)
	inteiro BotaoContinuarPressionado = g.carregar_imagem(caminhoBotaoContinuarPressionado)
	inteiro BotaoSaida = g.carregar_imagem(caminhoBotaoSaida)
	inteiro BotaoSaidaPressionado = g.carregar_imagem(caminhoBotaoSaidaPressionado)
	inteiro BotaoVoltar = g.carregar_imagem(caminhoBotaoVoltar)
	inteiro BotaoVoltarPressionado = g.carregar_imagem(caminhoBotaoVoltarPressionado)
	inteiro botaoPlay = g.carregar_imagem(caminhoBotaoPlay)
	inteiro botaoPlayPressionado = g.carregar_imagem(caminhoBotaoPlayPressionado)
	inteiro botaoCorRaca[7] = {g.carregar_imagem(caminhoBotaoCorRaca[0]), g.carregar_imagem(caminhoBotaoCorRaca[1]), g.carregar_imagem(caminhoBotaoCorRaca[2]), g.carregar_imagem(caminhoBotaoCorRaca[3]), g.carregar_imagem(caminhoBotaoCorRaca[4]), g.carregar_imagem(caminhoBotaoCorRaca[5]), g.carregar_imagem(caminhoBotaoCorRaca[6])}

	inteiro botaoSkinDireito[7] = {g.carregar_imagem(caminhoBotaoSkinRacaDireito[0]), g.carregar_imagem(caminhoBotaoSkinRacaDireito[1]), g.carregar_imagem(caminhoBotaoSkinRacaDireito[2]), g.carregar_imagem(caminhoBotaoSkinRacaDireito[3]), g.carregar_imagem(caminhoBotaoSkinRacaDireito[4]), g.carregar_imagem(caminhoBotaoSkinRacaDireito[5]), g.carregar_imagem(caminhoBotaoSkinRacaDireito[6])}
	inteiro botaoSkinEsquerdo[7] = {g.carregar_imagem(caminhoBotaoSkinRacaEsquerdo[0]), g.carregar_imagem(caminhoBotaoSkinRacaEsquerdo[1]), g.carregar_imagem(caminhoBotaoSkinRacaEsquerdo[2]), g.carregar_imagem(caminhoBotaoSkinRacaEsquerdo[3]), g.carregar_imagem(caminhoBotaoSkinRacaEsquerdo[4]), g.carregar_imagem(caminhoBotaoSkinRacaEsquerdo[5]), g.carregar_imagem(caminhoBotaoSkinRacaEsquerdo[6])}
	inteiro botaoEscRaca[14] = {g.carregar_imagem(caminhoBotaoEscRaca[0]), g.carregar_imagem(caminhoBotaoEscRaca[1]), g.carregar_imagem(caminhoBotaoEscRaca[2]), g.carregar_imagem(caminhoBotaoEscRaca[3]), g.carregar_imagem(caminhoBotaoEscRaca[4]), g.carregar_imagem(caminhoBotaoEscRaca[5]), g.carregar_imagem(caminhoBotaoEscRaca[6]), g.carregar_imagem(caminhoBotaoEscRaca[7]), g.carregar_imagem(caminhoBotaoEscRaca[8]), g.carregar_imagem(caminhoBotaoEscRaca[9]), g.carregar_imagem(caminhoBotaoEscRaca[10]), g.carregar_imagem(caminhoBotaoEscRaca[11]), g.carregar_imagem(caminhoBotaoEscRaca[12]), g.carregar_imagem(caminhoBotaoEscRaca[13])}
	
	inteiro placaTitulo = g.carregar_imagem(caminhoPlacaTitulo)
	inteiro nomeJogo1 = g.carregar_imagem(caminhoNomeJogo1)
	inteiro nomeJogo2 = g.carregar_imagem(caminhoNomeJogo2)

	inteiro racaBackground[8] = {g.carregar_imagem(caminhoElfDiurnoBackground), g.carregar_imagem(caminhoHumanoTemplarioBackground), g.carregar_imagem(caminhoAnaoBackground), g.carregar_imagem(caminhoHumanoCaveiraBackground), g.carregar_imagem(caminhoElfOcultistaBackground), g.carregar_imagem(caminhoVampiroBackground), g.carregar_imagem(caminhoAnaoMoicanoBackground), g.carregar_imagem(caminhoElfoBruxoBackground)} 

	inteiro texturaBotaoTreino[2] = {g.carregar_imagem(caminhoBotaoTreino), g.carregar_imagem(caminhoBotaoTreinoPressionado)}

	inteiro auxEscRaca = 2
	inteiro auxSexRaca = 0
	inteiro auxCorRaca = 1
	inteiro auxRoupa = 0

	inteiro auxLinguagem = 0

	real str = 10.0
	real vit = 100.0
	real agi = 10.0
	real int = 10.0

	inteiro lvl = 1
	inteiro xp = 0
	inteiro pt = 0

	inteiro xBola = 0
	inteiro yBola = 0

	inteiro statusAberto = 0

	inteiro rep = 1

	inteiro auxTreinamento = 0
	
	inteiro escDif = 1
	inteiro lifes = 0

	inteiro auxBatalhaEscolhaArea = 0

	inteiro auxiliarEsc1 = 0
	inteiro auxiliarEsc2 = 1
	inteiro auxiliarEsc3 = 0

	/*comentarios a cima do codigo comentado*/
	
	funcao inicio(){
		/*aqui inicia o programa com a função do jogo*/
		RPG()
	}
	funcao RPG(){
		/*aqui é onde cria as pastas necessarias para o jogo rodar*/
		se(a.arquivo_existe(caminhoInicial) != verdadeiro){
			a.criar_pasta(caminhoInicial)
			se(a.arquivo_existe(caminhoLevel) != verdadeiro){
				a.criar_pasta(caminhoLevel)
				}
			se(a.arquivo_existe(caminhoLingua)){
				inteiro arquivoLinguagem = a.abrir_arquivo(caminhoLingua, a.MODO_LEITURA)
				auxLinguagem = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoLinguagem)))
				a.fechar_arquivo(arquivoLinguagem)
				}
			}
		/*iniciando de fato o jogo em modo grafico*/
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(larguraJanela, alturaJanela)
		g.definir_titulo_janela("The infinity red secret")
		enquanto(saida){
			g.desenhar_imagem(0, 0, backGroundMenu)
			botoesTelaInicial()
			g.renderizar()
			}
		}
	funcao pintarTela(){
		/*função suporte para pintar a tela de fundo*/
		g.definir_cor(g.criar_cor(150, 150, 150))
		g.limpar()
		}
	funcao botaoSair(inteiro x, inteiro y){
		/*função suporte na criação do botão de sair*/
		inteiro xBotao = larguraJanela-x
		inteiro yBotao = alturaJanela-y
		inteiro larguraBotao = 272
		inteiro alturaBotao = 64
		g.desenhar_imagem(xBotao, yBotao, BotaoSaida)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(32.0)
		se((auxLinguagem%2) == 0){
			g.desenhar_texto(xBotao+104, yBotao+16, "EXIT")
			}senao{
				g.desenhar_texto(xBotao+104, yBotao+16, "SAIR")
				}
		se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > yBotao e m.posicao_y() < yBotao+alturaBotao)){
			g.desenhar_imagem(xBotao, yBotao, BotaoSaidaPressionado)
			g.definir_cor(g.COR_PRETO)
			g.definir_tamanho_texto(32.0)
			se((auxLinguagem%2) == 0){
				g.desenhar_texto(xBotao+104, yBotao+16, "EXIT")
				}senao{
					g.desenhar_texto(xBotao+104, yBotao+16, "SAIR")
					}
			se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				saida = falso
				volta = falso
				u.aguarde(150)
				}
			}
		}
	funcao botaoVoltar(inteiro x, inteiro y){
		/*funcão suporte do botao de voltar*/
		inteiro xBotao = larguraJanela-x
		inteiro yBotao = alturaJanela-y
		inteiro larguraBotao = 272
		inteiro alturaBotao = 64
		g.desenhar_imagem(xBotao, yBotao, BotaoVoltar)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(32.0)
		se((auxLinguagem%2) == 0){
			g.desenhar_texto(xBotao+72, yBotao+16, "RETURN")
			}senao{
				g.desenhar_texto(xBotao+50, yBotao+16, "RETORNAR")
				}
		se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > yBotao e m.posicao_y() < yBotao+alturaBotao)){
			g.desenhar_imagem(xBotao, yBotao, BotaoVoltarPressionado)
			g.definir_cor(g.COR_PRETO)
			g.definir_tamanho_texto(32.0)
			se((auxLinguagem%2) == 0){
				g.desenhar_texto(xBotao+72, yBotao+16, "RETURN")
				}senao{
					g.desenhar_texto(xBotao+50, yBotao+16, "RETORNAR")
					}
			se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				volta = falso
				auxSexRaca = auxiliarEsc1
				auxCorRaca = auxiliarEsc2
				auxRoupa = auxiliarEsc3
				u.aguarde(150)
				}
			}
		}
	funcao botaoLinguagem(){
		/*funcão feita para a escolha da liguagem de preferencia*/ 
		se((auxLinguagem%2) == 0){
				g.desenhar_imagem(550, 15, botaoEn)
				}senao{
					g.desenhar_imagem(550, 15, botaoPt)
					}
		se((m.posicao_x() > 550 e m.posicao_x() < 550+64) e (m.posicao_y() > 15 e m.posicao_y() < 15+32)){
			se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				auxLinguagem += 1
				u.aguarde(150)
				}
			}
		inteiro arquivoLinguagem = a.abrir_arquivo(caminhoLingua, a.MODO_ESCRITA)
		a.escrever_linha(""+auxLinguagem, arquivoLinguagem)
		a.fechar_arquivo(arquivoLinguagem)
		}
	funcao botoesTelaInicial(){
		/*botões e tela inicial, aqui tem o funcionamento do botao de continuar e o de novo jogo*/
			inteiro xBotao = larguraJanela-455
			inteiro yBotao[2] = {alturaJanela-220, alturaJanela-300}
			inteiro larguraBotao = 272
			inteiro alturaBotao = 64
			inteiro xTxt = xBotao+50
			cadeia txtEn[2] = {"CONTINUE", "NEW GAME"}
			cadeia txtPt[2] = {"CONTINUAR", "NOVO JOGO"}
			inteiro botoes[2] = {BotaoContinuar, BotaoNovoJogo}
			para(inteiro i=0; i<2; i++){
				g.desenhar_imagem(xBotao, yBotao[i], botoes[i])
				g.definir_cor(g.COR_PRETO)
				g.definir_tamanho_texto(32.0)
				se((auxLinguagem%2) == 0){
					g.desenhar_texto(xTxt, yBotao[i]+16, txtEn[i])
					}senao{
						g.desenhar_texto(xTxt, yBotao[i]+16, txtPt[i])
						}
			}
			g.desenhar_imagem(0, 50, placaTitulo)
			g.desenhar_imagem(55, 135, nomeJogo1)
			g.desenhar_imagem(-425, 205, nomeJogo2)
			botaoLinguagem()
			botaoSair(455, 140)
			/*o botão de continuar verifica se todas as informações ja forão requeridas, caso contrario ele não funcionara, 
			permitindo que o jogador escolha entre novo jogo e sair*/
			se(a.arquivo_existe(caminhoGame)){
				se(a.arquivo_existe(caminhoRaca)){
					se(a.arquivo_existe(caminhoStatus)){
						se(a.arquivo_existe(caminhoSexRaca)){
							se(a.arquivo_existe(caminhoCorRaca)){
								se(a.arquivo_existe(trenerConversa)){
									se(a.arquivo_existe(pontos)){
										se(a.arquivo_existe(experiencia)){
											se(a.arquivo_existe(level)){
												se(a.arquivo_existe(caminhoEscRoupa)){
													se(a.arquivo_existe(caminhoLingua)){
														inteiro arquivoA = a.abrir_arquivo(caminhoRaca, a.MODO_LEITURA)
														auxEscRaca = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoA)))
														a.fechar_arquivo(arquivoA)
														inteiro arquivoB = a.abrir_arquivo(caminhoSexRaca, a.MODO_LEITURA)
														auxSexRaca = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoB)))
														a.fechar_arquivo(arquivoB)
														inteiro arquivoC = a.abrir_arquivo(caminhoCorRaca, a.MODO_LEITURA)
														auxCorRaca = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoC)))
														a.fechar_arquivo(arquivoC)
														inteiro arquivoD = a.abrir_arquivo(caminhoEscRoupa, a.MODO_LEITURA)
														auxRoupa = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoD)))
														a.fechar_arquivo(arquivoD)
														inteiro arquivoStatus = a.abrir_arquivo(caminhoStatus, a.MODO_LEITURA)
														real auxStatus[4]
														para(inteiro i=0; i<4; i++){
															auxStatus[i] = t.cadeia_para_real(a.ler_linha(arquivoStatus))
															}
														str = auxStatus[0]
														vit = auxStatus[1]
														agi = auxStatus[2]
														int = auxStatus[3]
														a.fechar_arquivo(arquivoStatus)
														inteiro arquivoConversa = a.abrir_arquivo(trenerConversa, a.MODO_LEITURA)
														auxTreinamento = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoConversa)))
														a.fechar_arquivo(arquivoConversa)
														inteiro arquivoPT = a.abrir_arquivo(pontos, a.MODO_LEITURA)
														pt = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoPT)))
														a.fechar_arquivo(arquivoStatus)
														inteiro arquivoXp = a.abrir_arquivo(experiencia, a.MODO_LEITURA)
														xp = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoXp)))
														a.ler_linha(arquivoXp)
														a.fechar_arquivo(arquivoXp)
														inteiro arquivoLvl = a.abrir_arquivo(level, a.MODO_LEITURA)
														lvl = t.real_para_inteiro(t.cadeia_para_real(a.ler_linha(arquivoLvl)))
														a.fechar_arquivo(arquivoLvl)
														se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > yBotao[0] e m.posicao_y() < yBotao[0]+alturaBotao)){
															g.desenhar_imagem(xBotao, yBotao[0], BotaoContinuarPressionado)
															g.definir_cor(g.COR_PRETO)
															g.definir_tamanho_texto(32.0)
															se((auxLinguagem%2) == 0){
																g.desenhar_texto(xTxt, yBotao[0]+16, txtEn[0])
																}senao{
																	g.desenhar_texto(xTxt, yBotao[0]+16, txtPt[0])
																	}
															se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
																u.aguarde(150)
																enquanto(volta e saida){
																	pintarTela()
																	menuGame()
																	g.renderizar()
																	}volta = verdadeiro
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			/*botão de novo jogo onde o levara a area de personalização de personagem*/
			se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > yBotao[1] e m.posicao_y() < yBotao[1]+alturaBotao)){
				g.desenhar_imagem(xBotao, yBotao[1], BotaoNovoJogoPressionado)
				g.definir_cor(g.COR_PRETO)
				g.definir_tamanho_texto(32.0)
				se((auxLinguagem%2) == 0){
					g.desenhar_texto(xTxt, yBotao[1]+16, txtEn[1])
					}senao{
						g.desenhar_texto(xTxt, yBotao[1]+16, txtPt[1])
						}
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					inteiro arquivoA = a.abrir_arquivo(caminhoGame, a.MODO_ESCRITA)
					a.fechar_arquivo(arquivoA)
					auxTreinamento = 0
					auxRoupa = 0
					auxCorRaca = 1
					auxEscRaca = 2
					auxSexRaca = 0
					u.aguarde(150)
					enquanto(volta e saida){
						pintarTela()
						gameRacas(1)
						g.renderizar()
						}volta = verdadeiro
					}
				}
		}
	funcao gameRacas(inteiro aux){
		/*funcao feita para a personalização do personagem*/
		inteiro xBotao = larguraJanela-600
		inteiro yBotao[3] = {alturaJanela-224, alturaJanela-304, alturaJanela-384}
		inteiro xEspacoCor[3] = {300, 404, 508}
		inteiro larguraBotao = 208
		inteiro alturaBotao = 64
		inteiro xTxt = xBotao+32
		cadeia sexTxtEn[2] = {"MALE", "FEMALE"} 
		cadeia sexTxtPt[2] = {"MASCULINO", "FEMININO"} 
		cadeia txtEn[3] = {"ELF", "DWARF", "HUMAN"}
		cadeia txtPt[3] = {"ELFO", "ANÃO", "HUMANO"}
		inteiro sexCoresBotao[2] = {g.COR_AZUL, g.criar_cor(255, 0 ,200)}
		inteiro txtSexCores[2] = {g.COR_BRANCO, g.COR_PRETO}
		inteiro coresBotao[3] = {g.COR_VERDE, g.COR_AMARELO, g.COR_AZUL}
		inteiro coresTxt[3] = {g.COR_PRETO, g.COR_PRETO, g.COR_BRANCO}
		/*mudança de background dependendo da roupa*/
		se(auxEscRaca == 0 e auxRoupa == 0){
			g.desenhar_imagem(0, 0, racaBackground[0])
			}senao se(auxEscRaca == 2 e auxRoupa == 0){
				g.desenhar_imagem(0, 0, racaBackground[1])
				}senao se(auxEscRaca == 1 e auxRoupa == 0){
					g.desenhar_imagem(0, 0, racaBackground[2])
					}senao se(auxEscRaca == 2 e auxRoupa > 0){
						g.desenhar_imagem(0, 0, racaBackground[3])
						}senao se(auxEscRaca == 0 e auxRoupa == 1){
							g.desenhar_imagem(0, 0, racaBackground[4])
							}senao se(auxEscRaca == 0 e auxRoupa == 2){
								g.desenhar_imagem(0, 0, racaBackground[5])
								}se(auxEscRaca == 1 e auxRoupa == 1){
									g.desenhar_imagem(0, 0, racaBackground[6])
									}se(auxEscRaca == 0 e auxRoupa == 3){
										g.desenhar_imagem(0, 0, racaBackground[7])
										}
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(300, 125, 275, 275, falso, verdadeiro)
		para(inteiro i=0; i<3; i++){
			g.definir_cor(coresPele[i])
			g.desenhar_retangulo(xEspacoCor[i]+4, 50, 56, 56, verdadeiro, verdadeiro)
			se((m.posicao_x() > xEspacoCor[i] e m.posicao_x() < xEspacoCor[i]+64) e (m.posicao_y() > 46 e m.posicao_y() < 46+64)){
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(xEspacoCor[i]+4, 50, 56, 56, verdadeiro, verdadeiro)
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					auxCorRaca = i
					}
				}
			/*mudança do estilo do botão dependendo da roupa*/
			se(auxEscRaca == 0 e auxRoupa == 0){
				g.desenhar_imagem(xEspacoCor[i], 46, botaoCorRaca[0])
				}senao se(auxEscRaca == 2 e auxRoupa == 0){
					g.desenhar_imagem(xEspacoCor[i], 45, botaoCorRaca[3])
					}senao se(auxEscRaca == 1 e auxRoupa == 0){
						g.desenhar_imagem(xEspacoCor[i], 46, botaoCorRaca[1])
						}senao se(auxEscRaca == 2 e auxRoupa > 0){
							g.desenhar_imagem(xEspacoCor[i], 46, botaoCorRaca[2])
							}senao se(auxEscRaca == 0 e auxRoupa == 1){
								g.desenhar_imagem(xEspacoCor[i], 46, botaoCorRaca[5])
								}senao se(auxEscRaca == 0 e auxRoupa == 2){
									g.desenhar_imagem(xEspacoCor[i], 45, botaoCorRaca[4])
									}senao se(auxEscRaca == 0 e auxRoupa == 3){
										g.desenhar_imagem(xEspacoCor[i], 46, botaoCorRaca[6])
										}senao se(auxEscRaca == 1 e auxRoupa == 1){
											g.desenhar_imagem(xEspacoCor[i], 45, botaoCorRaca[3])
											}
			}
		/*mudança na cor da pele do personagem*/
		g.definir_cor(coresPele[auxCorRaca])
		g.desenhar_retangulo(310, 140, 256, 250, verdadeiro, verdadeiro)
		/*botão para escolha do sexo do personagem*/
		para(inteiro i=0; i<2; i++){
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(xBotao, yBotao[i]-290, larguraBotao, alturaBotao, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_BRANCO)
			se((auxLinguagem%2) == 0){
				g.desenhar_texto(xTxt, yBotao[i]-275, sexTxtEn[i])
				}senao{
					g.desenhar_texto(xTxt-20, yBotao[i]-275, sexTxtPt[i])
					}
			se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > yBotao[i]-290 e m.posicao_y() < (yBotao[i]-290)+alturaBotao)){
				g.definir_cor(sexCoresBotao[i])
				g.desenhar_retangulo(xBotao+4, (yBotao[i]-290)+4, larguraBotao-8, alturaBotao-8, verdadeiro, verdadeiro)
				g.definir_cor(txtSexCores[i])
				se((auxLinguagem%2) == 0){
					g.desenhar_texto(xTxt, yBotao[i]-275, sexTxtEn[i])
					}senao{
						g.desenhar_texto(xTxt-20, yBotao[i]-275, sexTxtPt[i])
						}
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					auxSexRaca = i
					}
				}
			}
		/*mudança de aparencia de botões ao mudar a roupa da raça escolhida*/
		se(aux == 1){
			se(auxEscRaca == 2){
				se(auxRoupa >= 1){
					g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[10])
					}senao{
						g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[2])
						}
				g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[8])
				g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[0])
				}senao se(auxEscRaca == 1){
					g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[2])
					se(auxRoupa == 1){
						g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[2])
						}senao{
							g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[8])
							}
					g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[0])
					}senao se(auxEscRaca == 0){
						g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[2])
						g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[8])
						se(auxRoupa == 0){
							g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[0])
							}senao se(auxRoupa == 1){
								g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[12])
								}senao se(auxRoupa == 2){
									g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[4])
									}senao se(auxRoupa == 3){
										g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[6])
										}
						}
				se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > (alturaJanela-384) e m.posicao_y() < (alturaJanela-384)+alturaBotao)){
						se(auxRoupa >= 1 e auxEscRaca == 2){
							g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[11])
							}senao{
								g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[3])
								}
						se(auxRoupa == 1  e auxEscRaca == 1){
							g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[2])
							}senao{
								g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[8])
								}
							se(auxRoupa == 1 e auxEscRaca == 0){
								g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[12])
								}senao se(auxRoupa == 2 e auxEscRaca == 0){
									g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[4])
									}senao se(auxRoupa == 3 e auxEscRaca == 0){
										g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[6])
										}senao{
											g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[0])
											}
					}
				se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > (alturaJanela-304) e m.posicao_y() < (alturaJanela-304)+alturaBotao)){
						se(auxRoupa >= 1 e auxEscRaca == 2){
							g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[10])
							}senao{
								g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[2])
								}
						se(auxRoupa == 1  e auxEscRaca == 1){
							g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[3])
							}senao{
								g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[9])
								}
							se(auxRoupa == 1 e auxEscRaca == 0){
								g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[12])
								}senao se(auxRoupa == 2 e auxEscRaca == 0){
									g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[4])
									}senao se(auxRoupa == 3 e auxEscRaca == 0){
										g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[6])
										}senao{
											g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[0])
											}
					}
				se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > (alturaJanela-224) e m.posicao_y() < (alturaJanela-224)+alturaBotao)){
						se(auxRoupa >= 1 e auxEscRaca == 2){
							g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[10])
							}senao{
								g.desenhar_imagem(xBotao, alturaJanela-384, botaoEscRaca[2])
								}
						se(auxRoupa == 1  e auxEscRaca == 1){
							g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[2])
							}senao{
								g.desenhar_imagem(xBotao, alturaJanela-304, botaoEscRaca[8])
								}
						se(auxRoupa == 1 e auxEscRaca == 0){
							g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[13])
							}senao se(auxRoupa == 2 e auxEscRaca == 0){
								g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[5])
								}senao se(auxRoupa == 3 e auxEscRaca == 0){
									g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[7])
									}senao{
										g.desenhar_imagem(xBotao, alturaJanela-224, botaoEscRaca[1])
										}
					}
				}
		/*botão de mudança de raça*/
		se(aux == 1){
			para(inteiro i=0; i<3; i++){
				g.definir_cor(g.COR_PRETO)
				se((auxLinguagem%2) == 0){
					g.desenhar_texto(xTxt, yBotao[i]+16, txtEn[i])
					}senao{
						g.desenhar_texto(xTxt, yBotao[i]+16, txtPt[i])
						}
				se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+larguraBotao) e (m.posicao_y() > yBotao[i] e m.posicao_y() < yBotao[i]+alturaBotao)){
					g.definir_cor(g.COR_PRETO)
					se((auxLinguagem%2) == 0){
						g.desenhar_texto(xTxt, yBotao[i]+16, txtEn[i])
						}senao{
							g.desenhar_texto(xTxt, yBotao[i]+16, txtPt[i])
							}
					se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
						auxEscRaca = i
						auxRoupa = 0
						}
					}
				}
			}
		inteiro x[2] = {300, 450}
		inteiro maximoHumano = guardaRoupaHumano-1
		inteiro maximoElfo = guardaRoupaElfo-1
		inteiro maximoAnao = guardaRoupaAnao-1
		/*mudança de botão de troca de skin ao mudar a roupa*/
		se(auxEscRaca == 0 e auxRoupa == 0){
			g.desenhar_imagem(x[1], 415, botaoSkinDireito[0])
			g.desenhar_imagem(x[0], 415, botaoSkinEsquerdo[0])
			}senao se(auxEscRaca == 2 e auxRoupa == 0){
				g.desenhar_imagem(x[1], 415, botaoSkinDireito[5])
				g.desenhar_imagem(x[0], 415, botaoSkinEsquerdo[5])
				}senao se(auxEscRaca == 1 e auxRoupa == 0){
					g.desenhar_imagem(x[1], 415, botaoSkinDireito[4])
					g.desenhar_imagem(x[0], 415, botaoSkinEsquerdo[4])
					}senao se(auxEscRaca == 2 e auxRoupa > 0){
						g.desenhar_imagem(x[1], 415, botaoSkinDireito[3])
						g.desenhar_imagem(x[0], 415, botaoSkinEsquerdo[3])
						}senao se(auxEscRaca == 0 e auxRoupa == 1){
							g.desenhar_imagem(x[1], 415, botaoSkinDireito[1])
							g.desenhar_imagem(x[0], 415, botaoSkinEsquerdo[1])
							}senao se(auxEscRaca == 0 e auxRoupa == 2){
								g.desenhar_imagem(x[1], 415, botaoSkinDireito[6])
								g.desenhar_imagem(x[0], 415, botaoSkinEsquerdo[6])
								}senao se(auxEscRaca == 0 e auxRoupa == 3){
									g.desenhar_imagem(x[1], 415, botaoSkinDireito[2])
									g.desenhar_imagem(x[0], 415, botaoSkinEsquerdo[2])
									}senao se(auxEscRaca == 1 e auxRoupa == 1){
										g.desenhar_imagem(x[1], 415, botaoSkinDireito[5])
										g.desenhar_imagem(x[0], 415, botaoSkinEsquerdo[5])
										}
			/*botão direito para mudar de roupa*/
			se((m.posicao_x() > x[1] e m.posicao_x() < x[1]+128) e (m.posicao_y() > 415 e m.posicao_y() < 415+64)){
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					u.aguarde(150)
					se(auxEscRaca == 2){
						se(auxRoupa >= 0 e auxRoupa < maximoHumano){
							auxRoupa += 1
							}
						}senao se(auxEscRaca == 1){
							se(auxRoupa >= 0 e auxRoupa < maximoAnao){
								auxRoupa += 1
								}
							}senao se(auxEscRaca == 0){
								se(auxRoupa >= 0 e auxRoupa < maximoElfo){
									auxRoupa += 1
									}
								}
					}
				}
			/*botão esquerdo para mudar rouopa*/
			se((m.posicao_x() > x[0] e m.posicao_x() < x[0]+128) e (m.posicao_y() > 415 e m.posicao_y() < 415+64)){
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					u.aguarde(150)
					se(auxRoupa > 0){
						auxRoupa -= 1
						}
					}
				}
			/*roupa escolhida*/
				se(auxSexRaca == 0 e auxEscRaca == 2){
					g.desenhar_imagem(310, 135, humanMachoRoupa[auxRoupa])
					}senao se(auxSexRaca == 1 e auxEscRaca == 2){
						g.desenhar_imagem(310, 135, humanFemeaRoupa[auxRoupa])
						}
				se(auxSexRaca == 0 e auxEscRaca == 1){
					g.desenhar_imagem(310, 135, anaoMachoRoupa[auxRoupa])
					}senao se(auxSexRaca == 1 e auxEscRaca == 1){
						g.desenhar_imagem(310, 135, anaoFemeaRoupa[auxRoupa])
						}
				se(auxSexRaca == 0 e auxEscRaca == 0){
					g.desenhar_imagem(310, 135, elfoMachoRoupa[auxRoupa])
					}senao se(auxSexRaca == 1 e auxEscRaca == 0){
						g.desenhar_imagem(310, 135, elfoFemeaRoupa[auxRoupa])
						}
		/*botão para iniciar o jogo*/
		g.desenhar_imagem(350, 528, botaoPlay)
		g.definir_cor(g.COR_PRETO)
		se((auxLinguagem%2) == 0){
			g.desenhar_texto(445, 545, "PLAY")
			}senao{
				g.desenhar_texto(415, 545, "COMEÇAR")
				}
		se((m.posicao_x() > 350 e m.posicao_x() < 350+256) e (m.posicao_y() > 528 e m.posicao_y() < 528+64)){
			g.desenhar_imagem(350, 528, botaoPlayPressionado)
			se((auxLinguagem%2) == 0){
				g.desenhar_texto(445, 545, "PLAY")
				}senao{
					g.desenhar_texto(415, 545, "COMEÇAR")
					}
			se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				auxiliarEsc1 = auxSexRaca
				auxiliarEsc2 = auxCorRaca
				auxiliarEsc3 = auxRoupa
				/*definição de status*/
				se(aux == 1){
					str = 10.0
					vit = 100.0
					agi = 10.0
					int = 10.0
					se(auxEscRaca == 2){
						str *= 2
						vit *= 0.75
						agi *= 1
						int *= 1
						}senao se(auxEscRaca == 1){
							str *= 2
							vit *= 2
							agi *= 0.75
							int *= 0.75
							}senao se(auxEscRaca == 0){
								str *= 0.75
								vit *= 0.75
								agi *= 2.0
								int *= 2.0
								}
					/*salvando informações necessarias*/
					inteiro arquivoStatusA = a.abrir_arquivo(caminhoStatus, a.MODO_ESCRITA)
					a.escrever_linha(""+str, arquivoStatusA)
					a.fechar_arquivo(arquivoStatusA)
					inteiro arquivoStatusB = a.abrir_arquivo(caminhoStatus, a.MODO_ACRESCENTAR)
					a.escrever_linha(""+vit, arquivoStatusB)
					a.escrever_linha(""+agi, arquivoStatusB)
					a.escrever_linha(""+int, arquivoStatusB)
					a.fechar_arquivo(arquivoStatusB)
					inteiro arquivoEscRaca = a.abrir_arquivo(caminhoRaca, a.MODO_ESCRITA)
					a.escrever_linha(""+auxEscRaca, arquivoEscRaca)
					a.fechar_arquivo(arquivoEscRaca)
					inteiro arquivoEscSexRaca = a.abrir_arquivo(caminhoSexRaca, a.MODO_ESCRITA)
					a.escrever_linha(""+auxSexRaca, arquivoEscSexRaca)
					a.fechar_arquivo(arquivoEscSexRaca)
					inteiro arquivoEscCorRaca = a.abrir_arquivo(caminhoCorRaca, a.MODO_ESCRITA)
					a.escrever_linha(""+auxCorRaca, arquivoEscCorRaca)
					a.fechar_arquivo(arquivoEscCorRaca)
					inteiro arquivoRoupa = a.abrir_arquivo(caminhoEscRoupa, a.MODO_ESCRITA)
					a.escrever_linha(""+auxRoupa, arquivoRoupa)
					a.fechar_arquivo(arquivoRoupa)
					lvl = 1
					pt = 0
					xp = 0
					inteiro arquivoPt = a.abrir_arquivo(pontos, a.MODO_ESCRITA)
					a.escrever_linha(""+pt, arquivoPt)
					a.fechar_arquivo(arquivoPt)
					inteiro arquivoXp = a.abrir_arquivo(experiencia, a.MODO_ESCRITA)
					a.escrever_linha(""+xp, arquivoXp)
					a.fechar_arquivo(arquivoXp)
					inteiro arquivoLvl = a.abrir_arquivo(level, a.MODO_ESCRITA)
					a.escrever_linha(""+lvl, arquivoLvl)
					a.fechar_arquivo(arquivoLvl)
					u.aguarde(150)
					}senao{
						inteiro arquivoEscSexRaca = a.abrir_arquivo(caminhoSexRaca, a.MODO_ESCRITA)
						a.escrever_linha(""+auxSexRaca, arquivoEscSexRaca)
						a.fechar_arquivo(arquivoEscSexRaca)
						inteiro arquivoEscCorRaca = a.abrir_arquivo(caminhoCorRaca, a.MODO_ESCRITA)
						a.escrever_linha(""+auxCorRaca, arquivoEscCorRaca)
						a.fechar_arquivo(arquivoEscCorRaca)
						inteiro arquivoRoupa = a.abrir_arquivo(caminhoEscRoupa, a.MODO_ESCRITA)
						a.escrever_linha(""+auxRoupa, arquivoRoupa)
						a.fechar_arquivo(arquivoRoupa)
						}
				enquanto(saida){
					pintarTela()
					menuGame()
					g.renderizar()
					}
				}
			}
		botaoVoltar(600, 112)
		}
	funcao menuGame(){
		/*menu principal do jogo*/
		botaoSair(632, 72)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(0, 0, 640, 112, falso, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		se((auxLinguagem%2) == 0){
			g.desenhar_texto(20, 60, racaEn[auxEscRaca])
			}senao{
				g.desenhar_texto(20, 60, racaPt[auxEscRaca])
				}
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(0, 100, 280, 290, falso, verdadeiro)
		g.desenhar_retangulo(365, 380, 256, 64, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		se((auxLinguagem%2) == 0){
			g.desenhar_texto(410, 395, "WARDROBE")
			}senao{
				g.definir_tamanho_texto(30.0)
				g.desenhar_texto(380, 395, "GUARDA-ROUPA")
				}
		se((m.posicao_x() > 365 e m.posicao_x() < 365+256) e (m.posicao_y() > 380 e m.posicao_y() < 380+64)){
			g.definir_cor(g.COR_BRANCO)
			g.desenhar_retangulo(365+4, 380+4, 256-8, 64-8, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			se((auxLinguagem%2) == 0){
				g.desenhar_texto(410, 395, "WARDROBE")
				}senao{
					g.desenhar_texto(380, 395, "GUARDA-ROUPA")
					}
			se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				u.aguarde(150)
				enquanto(volta e saida){
					pintarTela()
					gameRacas(0)
					g.renderizar()
					}volta = verdadeiro
				}
			}
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(365, 130, 256, 64,verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		se((auxLinguagem%2) == 0){
			g.desenhar_texto(430, 145, "BATTLE")
			}senao{
				g.desenhar_texto(430, 145, "BATALHA")
				}
		se((m.posicao_x() > 365 e m.posicao_x() < 365+256) e (m.posicao_y() > 130 e m.posicao_y() < 130+64)){
			g.definir_cor(g.COR_BRANCO)
			g.desenhar_retangulo(365+4, 130+4, 256-8, 64-8,verdadeiro, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			se((auxLinguagem%2) == 0){
				g.desenhar_texto(430, 145, "BATTLE")
				}senao{
					g.desenhar_texto(430, 145, "BATALHA")
					}
			se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				enquanto(volta e saida){
					pintarTela()
					escolhaDeArea()
					g.renderizar()
					}volta = verdadeiro
				}
			}
		se(auxEscRaca == 2){
			g.definir_cor(coresPele[auxCorRaca])
			g.desenhar_retangulo(12, 125, 250, 250, verdadeiro, verdadeiro)
			se(auxSexRaca == 0){
				g.desenhar_imagem(10, 120, humanMachoRoupa[auxRoupa])
				}senao{
					g.desenhar_imagem(10, 120, humanFemeaRoupa[auxRoupa])
					}
			}senao se(auxEscRaca == 1){
				g.definir_cor(coresPele[auxCorRaca])
				g.desenhar_retangulo(12, 125, 250, 250, verdadeiro, verdadeiro)
				se(auxSexRaca == 0){
					g.desenhar_imagem(10, 120, anaoMachoRoupa[auxRoupa])
					}senao{
						g.desenhar_imagem(10, 120, anaoFemeaRoupa[auxRoupa])
						}
				}senao se(auxEscRaca == 0){
					g.definir_cor(coresPele[auxCorRaca])
					g.desenhar_retangulo(12, 125, 250, 250, verdadeiro, verdadeiro)
					se(auxSexRaca == 0){
						g.desenhar_imagem(10, 120, elfoMachoRoupa[auxRoupa])
						}senao{
							g.desenhar_imagem(10, 120, elfoFemeaRoupa[auxRoupa])
							}
					}
		botaoTreino()
		botaoStatus()
		barraXp(50, 400)
		}
	funcao barraXp(inteiro x, inteiro y){
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(25.0)
		g.desenhar_texto(x-45, y+3, "XP")
		g.desenhar_texto(x+235, y, ""+lvl+" Lvl")
		g.desenhar_retangulo(x-10, y, 240, 24, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_VERDE)
		g.desenhar_retangulo(x+4, y+4, xp, 16, verdadeiro, verdadeiro)
		se(xp >= 232){
			lvl += 1
			xp -= 232
			pt += 3
			inteiro arquivoXp = a.abrir_arquivo(experiencia, a.MODO_ESCRITA)
			a.escrever_linha(""+xp, arquivoXp)
			a.fechar_arquivo(arquivoXp)
			}senao se(xp < 0){
				se(lvl > 1){
					lvl -= 1
					xp += 232
					pt -= 3
					}senao{
						xp = 0
						}
				}
		}
	funcao botaoStatus(){
		inteiro xBotao = 586
		inteiro yBotao = 24
		inteiro tamanhoBotao = 32
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(xBotao, yBotao, tamanhoBotao, tamanhoBotao, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(xBotao+1, yBotao+1, tamanhoBotao-2, tamanhoBotao-2, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(590, 40, 5, 10, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(600, 30, 5, 20, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(610, 35, 5, 15, verdadeiro, verdadeiro)
		se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+tamanhoBotao) e (m.posicao_y() > yBotao e m.posicao_y() < yBotao+tamanhoBotao)){
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(xBotao, yBotao, tamanhoBotao, tamanhoBotao, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_BRANCO)
			g.desenhar_retangulo(xBotao+1, yBotao+1, tamanhoBotao-2, tamanhoBotao-2, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(590, 40, 5, 10, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(600, 30, 5, 20, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(610, 35, 5, 15, verdadeiro, verdadeiro)
			se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				statusAberto += 1
				u.aguarde(150)
				}
			}
		se((statusAberto%2) != 0){
			inteiro xTela = 370
			inteiro yTela = 60
			inteiro tamanhoTela = 256
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(xTela, yTela, tamanhoTela, tamanhoTela, verdadeiro, verdadeiro)
			g.definir_cor(g.criar_cor(100, 100, 100))
			g.desenhar_retangulo(xTela+1, yTela+1, tamanhoTela-2, tamanhoTela-2, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			g.desenhar_texto(390, 80, "STR: "+str)
			g.desenhar_texto(390, 127, "VIT: "+vit)
			g.desenhar_texto(390, 172, "AGI: "+agi)
			g.desenhar_texto(390, 222, "INT: "+int)
			g.desenhar_texto(390, 270, "PT: "+pt)
			se(pt > 0){
				inteiro yBotaoAddPoint[4] = {75, 125, 170, 220}
				para(inteiro i=0; i<4; i++){
					g.definir_cor(g.COR_PRETO)
					g.desenhar_retangulo(550, yBotaoAddPoint[i], 32, 32, verdadeiro, verdadeiro)
					g.definir_cor(g.COR_BRANCO)
					g.definir_tamanho_texto(35.0)
					g.desenhar_texto(553, yBotaoAddPoint[i], "+")
					se((m.posicao_x() > 550 e m.posicao_x() < 550+64) e (m.posicao_y() > yBotaoAddPoint[i] e m.posicao_y() < yBotaoAddPoint[i]+32)){
						g.definir_cor(g.COR_BRANCO)
						g.desenhar_retangulo(554, yBotaoAddPoint[i]+4, 24, 24, verdadeiro, verdadeiro)
						g.definir_cor(g.COR_PRETO)
						g.definir_tamanho_texto(35.0)
						g.desenhar_texto(553, yBotaoAddPoint[i], "+")
						se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
							u.aguarde(150)
							pt -= 1
							se(i == 0){
								str += 1
								}senao se(i == 1){
									vit += 10
									}senao se(i == 2){
										agi += 1
										}senao se(i == 3){
											int += 1
											}
							inteiro arquivoStatus = a.abrir_arquivo(caminhoStatus, a.MODO_ESCRITA)
							a.escrever_linha(""+str, arquivoStatus)
							a.fechar_arquivo(arquivoStatus)
							inteiro arquivoStatusMais = a.abrir_arquivo(caminhoStatus, a.MODO_ACRESCENTAR)
							a.escrever_linha(""+vit, arquivoStatusMais)
							a.escrever_linha(""+agi, arquivoStatusMais)
							a.escrever_linha(""+int, arquivoStatusMais)
							a.fechar_arquivo(arquivoStatusMais)
							inteiro arquivoPT = a.abrir_arquivo(pontos, a.MODO_ESCRITA)
							a.escrever_linha(""+pt, arquivoPT)
							a.fechar_arquivo(arquivoPT)
							inteiro arquivoXp = a.abrir_arquivo(experiencia, a.MODO_ESCRITA)
							a.escrever_linha(""+xp, arquivoXp)
							a.fechar_arquivo(arquivoXp)
							}
						}
					}
				}
			}
		}
	funcao botaoTreino(){
		inteiro xBotao = 355
		inteiro yBotao = 215
		g.desenhar_imagem(xBotao, yBotao, texturaBotaoTreino[0])
		g.definir_cor(g.COR_PRETO)
		se((auxLinguagem%2) == 0){
			g.desenhar_texto(xBotao+65, yBotao+15, "TRAINING")
			}senao{
				g.desenhar_texto(xBotao+75, yBotao+15, "TREINO")
				}
		se((statusAberto%2) == 0){
			se((m.posicao_x() > xBotao e m.posicao_x() < xBotao+256) e (m.posicao_y() > yBotao e m.posicao_y() < yBotao+64)){
				g.desenhar_imagem(xBotao, yBotao, texturaBotaoTreino[1])
				se((auxLinguagem%2) == 0){
					g.desenhar_texto(xBotao+65, yBotao+15, "TRAINING")
					}senao{
						g.desenhar_texto(xBotao+75, yBotao+15, "TREINO")
						}
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					u.aguarde(150)
					enquanto(volta e saida){
						pintarTela()
						enquanto(volta e saida){
							conversaTreinador()
							}
						g.renderizar()
						}volta = verdadeiro
					}
				}
			}
		}
	funcao conversaTreinador(){
		inteiro xBotao = 10
		inteiro yBotao = 445
		pintarTela()
		g.desenhar_imagem(25, 0, treinerCharacter)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(20.0)
		se((m.posicao_x() > 22 e m.posicao_x() < 22+256) e (m.posicao_y() > 10 e m.posicao_y() < 10+256)){
			se(auxTreinamento == 0){
				g.definir_tamanho_texto(15.0)
				g.desenhar_texto(m.posicao_x()+10, m.posicao_y(), "???")
				}senao{
					g.definir_tamanho_texto(15.0)
					g.desenhar_texto(m.posicao_x()+10, m.posicao_y(), "Hugh Jackson")
					}
			g.definir_tamanho_texto(25.0)
			}
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(0, 235, 640, 200, falso, verdadeiro)
		se(auxTreinamento == 0){
			g.definir_cor(g.COR_BRANCO)
			g.desenhar_retangulo(300, 10, 300, 220, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(300, 10, 300, 220, verdadeiro, falso)
			g.definir_tamanho_texto(30.0)
			g.desenhar_texto(25, 265, "???")
			g.definir_tamanho_texto(20.0)
			se((auxLinguagem%2) == 0){
					g.desenhar_texto(310, 25, "Welkome in my adventurer")
					g.desenhar_texto(310, 55, "academy in here you will trein")
					g.desenhar_texto(310, 85, "your strength, your vitallity")
					g.desenhar_texto(310, 115, "and your agillity!")
					g.desenhar_texto(310, 145, "My name is Hugh Jackson and")
					g.desenhar_texto(310, 175, "i am your treiner!")
					g.desenhar_texto(520, 200, "NEXT")
					}senao{
						g.desenhar_texto(306, 25, "Bem vindo a minha academia de")
						g.desenhar_texto(306, 55, "aventureiros aqui você treinara")
						g.desenhar_texto(306, 85, "sua força, sua vitalidade")
						g.desenhar_texto(306, 115, "e sua agilidade!")
						g.desenhar_texto(306, 145, "Meu nome é Hugh Jackson e")
						g.desenhar_texto(306, 175, "sou seu treinador!")
						g.desenhar_texto(500, 200, "PROXIMO")
						}
			inteiro arquivo = a.abrir_arquivo(trenerConversa, a.MODO_ESCRITA)
			a.escrever_linha(""+0, arquivo)
			a.fechar_arquivo(arquivo)
			se((m.posicao_x() > 300 e m.posicao_x() < 300+300) e (m.posicao_y() > 10 e m.posicao_y() < 10+220)){
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					auxTreinamento += 1
					u.aguarde(150)
					}
				}
			}senao se(auxTreinamento == 1){
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(300, 10, 300, 220, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(300, 10, 300, 220, verdadeiro, falso)
				g.definir_tamanho_texto(30.0)
				g.desenhar_texto(25, 265, "Hugh Jackson:")
				g.definir_tamanho_texto(20.0)
				se((auxLinguagem%2) == 0){
					g.desenhar_texto(310, 25, "To trein you enterin the")
					g.desenhar_texto(310, 55, "desired area!")
					g.desenhar_texto(310, 85, "In the area you choice your")
					g.desenhar_texto(310, 115, "treinning level.")
					g.desenhar_texto(310, 145, "You will unlocked new areas")
					g.desenhar_texto(310, 175, "in others levels.")
					g.desenhar_texto(520, 200, "NEXT")
					}senao{
						g.desenhar_texto(310, 25, "Ao entrar na area de treino")
						g.desenhar_texto(310, 55, "você podera escolher um")
						g.desenhar_texto(310, 85, "nivel de treinamento.")
						g.desenhar_texto(310, 115, "Alem de desbloquear novas")
						g.desenhar_texto(310, 145, "areas ao passar dos niveis.")
						g.desenhar_texto(500, 200, "PROXIMO")
						}
				se((m.posicao_x() > 300 e m.posicao_x() < 300+300) e (m.posicao_y() > 10 e m.posicao_y() < 10+220)){
					se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
						auxTreinamento += 1
						u.aguarde(150)
						}
					}
				}senao{
					inteiro arquivo = a.abrir_arquivo(trenerConversa, a.MODO_ESCRITA)
					a.escrever_linha(""+2, arquivo)
					a.fechar_arquivo(arquivo)
					inteiro yBotaoTreino[2] = {50, 130}
					inteiro yTextoTreino[2] = {70, 150}
					inteiro xTextoTreino[2] = {375, 405}
					cadeia textoEn[2] = {"CONCENTRATION", "---LOCKED---"}
					cadeia textoPt[2] = {"CONCENTRAÇÃO", "---TRANCADO---"}
					para(inteiro i=0; i<2; i++){
						g.definir_cor(g.COR_PRETO)
						g.desenhar_retangulo(350, yBotaoTreino[i], 256, 64, verdadeiro, verdadeiro)
						g.definir_cor(g.COR_BRANCO)
						g.definir_tamanho_texto(25.0)
						se((auxLinguagem%2) == 0){
							g.desenhar_texto(xTextoTreino[i], yTextoTreino[i], textoEn[i])
							}senao{
								g.desenhar_texto(xTextoTreino[0]+5, yTextoTreino[0], textoPt[0])
								g.desenhar_texto(xTextoTreino[1]-20, yTextoTreino[1], textoPt[1])
								}
						}
					se((m.posicao_x() > 350 e m.posicao_x() < 350+256) e (m.posicao_y() > yBotaoTreino[0] e m.posicao_y() < yBotaoTreino[0]+64)){
						g.definir_cor(g.COR_BRANCO)
						g.desenhar_retangulo(354, yBotaoTreino[0]+4, 248, 56, verdadeiro, verdadeiro)
						g.definir_cor(g.COR_PRETO)
						g.definir_tamanho_texto(25.0)
						se((auxLinguagem%2) == 0){
							g.desenhar_texto(xTextoTreino[0], yTextoTreino[0], textoEn[0])
							}senao{
								g.desenhar_texto(xTextoTreino[0]+5, yTextoTreino[0], textoPt[0])
								}
						se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
							u.aguarde(150)
							enquanto(volta e saida){
								pintarTela()
								treinoConsentracao()
								botaoStatus()
								botaoVoltar(632, 72)
								botaoSair(282, 72)
								g.renderizar()
								}volta = verdadeiro
							}
						}
					}
		g.definir_cor(g.criar_cor(50, 50, 50))
		g.desenhar_retangulo(0, 240, 640, 90, falso, verdadeiro)
		botaoVoltar(632, 72)
		botaoSair(282, 72)
		se(auxTreinamento == 0){
				g.desenhar_texto(125, 250, "???")
				}senao{
					g.desenhar_texto(55, 250, "Hugh Jackson")
					}
		g.renderizar()
		}
	funcao treinoConsentracao(){
		inteiro corBola[3] = {g.COR_VERDE, g.COR_AMARELO, g.COR_AZUL}
		inteiro yBotaoDif[3] = {325, 395, 465}
		inteiro yTextDif[3] = {345, 415, 485}
		inteiro xTextDifEn[3] = {475, 455, 475}
		inteiro xTextDifPt[3] = {475, 470, 465}
		inteiro tamanhoBola[3] = {25, 15, 10}
		inteiro ganhoXp[3] = {15, 30, 80}
		cadeia difEn[3] = {"EASY", "MEDIUM", "HARD"}
		cadeia difPt[3] = {"FACIL", "MÉDIO", "DIFICIL"}
		barraXp(45, 330)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(0, 0, 640, 320, falso, verdadeiro)
		para(inteiro i=0; i<3; i++){
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(380, yBotaoDif[i], 256, 64, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_BRANCO)
			se((auxLinguagem%2) == 0){
				g.desenhar_texto(xTextDifEn[i], yTextDif[i], difEn[i])
				}senao{
					g.desenhar_texto(xTextDifPt[i], yTextDif[i], difPt[i])
					}
			se((m.posicao_x() > 380 e m.posicao_x() < 380+256) e (m.posicao_y() > yBotaoDif[i] e m.posicao_y() < yBotaoDif[i]+64)){
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(380+4, yBotaoDif[i]+4, 248, 56, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				se((auxLinguagem%2) == 0){
					g.desenhar_texto(xTextDifEn[i], yTextDif[i], difEn[i])
					}senao{
						g.desenhar_texto(xTextDifPt[i], yTextDif[i], difPt[i])
						}
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					u.aguarde(150)
					xBola = u.sorteia(170, 450)
					yBola = u.sorteia(10, 290)
					escDif = i
					}
				}
			}
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(170, 10, 300, 300, falso, verdadeiro)
		se(xBola == 0){
			xBola = u.sorteia(170, 280)
			yBola = u.sorteia(10, 280)
			}
		g.definir_cor(corBola[auxEscRaca])
		g.desenhar_retangulo(xBola, yBola, tamanhoBola[escDif], tamanhoBola[escDif], verdadeiro, verdadeiro)
		para(inteiro i=0; i<3; i++){
			se((m.posicao_x() > xBola e m.posicao_x() < xBola+tamanhoBola[escDif]) e (m.posicao_y() > yBola e m.posicao_y() < yBola+tamanhoBola[escDif])){
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					xp += ganhoXp[escDif]/lvl
					lifes = -1
					xBola = u.sorteia(170, 450)
					yBola = u.sorteia(10, 290)
					inteiro arquivoXp = a.abrir_arquivo(experiencia, a.MODO_ESCRITA)
					a.escrever_linha(""+xp, arquivoXp)
					a.fechar_arquivo(arquivoXp)
					inteiro arquivoLvl = a.abrir_arquivo(level, a.MODO_ESCRITA)
					a.escrever_linha(""+lvl, arquivoLvl)
					a.fechar_arquivo(arquivoLvl)
					inteiro arquivoPt = a.abrir_arquivo(pontos, a.MODO_ESCRITA)
					a.escrever_linha(""+pt, arquivoPt)
					a.fechar_arquivo(arquivoPt)
					}
				}senao se(((m.posicao_x() > xBola e m.posicao_x() < xBola+tamanhoBola[escDif]) e (m.posicao_y() > yBola e m.posicao_y() < yBola+tamanhoBola[escDif])) == falso){
					se((m.posicao_x() > 170 e m.posicao_x() < 170+300) e (m.posicao_y() > 10 e m.posicao_y() < 10+300)){
						se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
							lifes += 1
							u.aguarde(300)
							}
						}
					}
			inteiro limite[3] = {5, 3, 1}
			se(lifes == limite[escDif]){
				lifes -= limite[escDif]
				xp -= 15*lvl
				}	
			}
		}
	funcao escolhaDeArea(){
		botaoVoltar(632, 72)
		inteiro y[3] = {300, 380, 460}
		inteiro areas[3] = {g.COR_VERDE, g.COR_AMARELO, g.COR_BRANCO}
		cadeia nomeAreaPT[3] = {"FLORESTA", "DESERTO", "MONTANHA"}
		cadeia nomeAreaEN[3] = {"FOREST", "DESERT", "MONTAIN"}
		g.desenhar_retangulo(10, 10, 266, 266, falso, verdadeiro)
		para(inteiro i = 0; i < 3; i++){
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(15, y[i], 256, 64, verdadeiro, verdadeiro)
			}
		para(inteiro i = 0; i <= auxBatalhaEscolhaArea; i++){
			g.definir_cor(g.COR_BRANCO)
			se(auxLinguagem%2 == 0){
				g.desenhar_texto(45, y[i]+15, nomeAreaEN[i])
				}senao{
					g.desenhar_texto(45, y[i]+15, nomeAreaPT[i])
					}
			se((m.posicao_x() > 15 e m.posicao_x() < 15+256) e (m.posicao_y() > y[i] e m.posicao_y() < y[i]+64)){
				g.definir_cor(areas[i])
				g.desenhar_retangulo(15, 15, 256, 256, falso, verdadeiro)
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(15+4, y[i]+4, 256-8, 64-8, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				se(auxLinguagem%2 == 0){
					g.desenhar_texto(45, y[i]+15, nomeAreaEN[i])
					}senao{
						g.desenhar_texto(45, y[i]+15, nomeAreaPT[i])
						}
				se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
					se(auxBatalhaEscolhaArea < 2 e auxBatalhaEscolhaArea == i){
						auxBatalhaEscolhaArea += 1
						}
					enquanto(saida e volta){
						pintarTela()
						area()
						g.renderizar()
						}volta = verdadeiro
					u.aguarde(150)
					}
				}
			}
		}
	funcao area(){
		monstro(252, 150)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(0, 360, 640, 280, falso, verdadeiro)
		g.definir_cor(g.criar_cor(50, 50, 50))
		g.desenhar_retangulo(10, 370, 620, 260, falso, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(350, 540, 256, 64, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		se(auxLinguagem%2 == 0){
			g.desenhar_texto(400, 555, "RUNING")
			}senao{
				g.desenhar_texto(400, 555, "CORRER")
				}
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(35, 400, 256, 64, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		se(auxLinguagem%2 == 0){
			g.desenhar_texto(80, 415, "ATTACK")
			}senao{
				g.desenhar_texto(80, 415, "ATAQUE")
				}
		se((m.posicao_x() > 350 e m.posicao_x() < 350+256) e (m.posicao_y() > 540 e m.posicao_y() < 540+64)){
			g.definir_cor(g.criar_cor(100, 100, 100))
			g.desenhar_retangulo(350+4, 540+4, 256-8, 64-8, verdadeiro, verdadeiro)
			g.definir_cor(g.COR_PRETO)
				se(auxLinguagem%2 == 0){
					g.desenhar_texto(400, 555, "RUNING")
					}senao{
						g.desenhar_texto(400, 555, "CORRER")
						}
			se(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				volta = falso
				}
			}
		se((m.posicao_x() > 80 e m.posicao_x() < 80+256) e (m.posicao_y() > 415 e m.posicao_y() < 415+64)){
			}
		}
	funcao monstro(inteiro x, inteiro y){
		g.definir_cor(g.COR_VERDE)
		g.desenhar_retangulo(x, y, 128, 256, verdadeiro, verdadeiro)
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 54560; 
 * @DOBRAMENTO-CODIGO = [163, 167, 195, 225, 257, 274, 403, 900, 1021, 1159];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */