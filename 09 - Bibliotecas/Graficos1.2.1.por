programa
{
	
	inclua biblioteca Graficos --> g 
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Matematica --> m
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		
		inteiro largura_janela = u.sorteia(250, 1000)
		inteiro altura_janela = u.sorteia(250, 1000)
		inteiro gg = u.sorteia(1, 1000)
		inteiro wp = u.sorteia(1, 1000)
		inteiro h = u.sorteia(1, 2000)
		inteiro H = u.sorteia(1, 2000)
		g.definir_dimensoes_janela(largura_janela, altura_janela)
		g.definir_titulo_janela("Gráficos")
		inteiro k = 0
		
		enquanto (nao 	t.tecla_pressionada(t.TECLA_ESC) )
		{
			g.definir_cor(g.criar_cor(210,15,20)) 
			g.limpar()
			
			g.definir_cor(g.COR_PRETO)
			para (inteiro i=0 ; i<= largura_janela/ gg ; i++)
			{
				para (inteiro j=0; j<= altura_janela/ wp ; j++)
				{
					g.desenhar_retangulo (
					i*20 + 20*m.cosseno((k+j*h)*2*m.PI/360),
					j*20 + 20*m.seno((k+i*H)*2*m.PI/360), 
					5, 5, falso, verdadeiro)
				}
			}
			g.renderizar()
			u.aguarde(5)
			k++
		}
	g.encerrar_modo_grafico()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 292; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */