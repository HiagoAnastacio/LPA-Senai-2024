programa
{
	
	inclua biblioteca Graficos --> g 
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Matematica --> m
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		inteiro largura_janela = 1000
		inteiro altura_janela = 1000
		inteiro espacamento = 20
		g.definir_dimensoes_janela(largura_janela, altura_janela)
		g.definir_titulo_janela("Gráficos")

          desenhar_ondas(largura_janela, altura_janela, espacamento)

		g.encerrar_modo_grafico()
		

	}
	funcao desenhar_ondas(inteiro largura_janela,inteiro altura_janela, inteiro espacamento)
	{
		inteiro fase = 0
		enquanto (nao 	t.tecla_pressionada(t.TECLA_ESC) )
		{
			g.definir_cor(g.criar_cor(210,15,20)) 
			g.limpar()
			
			g.definir_cor(g.COR_PRETO)
			para (inteiro i=0 ; i<= largura_janela/20 ; i++)
			{
				para (inteiro j=0; j<= altura_janela/20 ; j++)
				{
					g.desenhar_retangulo (
					i*espacamento + espacamento*m.cosseno((fase +j*espacamento)*2*m.PI/360),
					j*espacamento + espacamento*m.seno((fase +i*espacamento )*2*m.PI/360), 
					5, 5, falso, verdadeiro)
				}
			}
			g.renderizar()
			u.aguarde(5)
			fase++
		}
	
	}
     
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 460; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */