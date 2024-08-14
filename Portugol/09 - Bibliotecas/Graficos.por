programa
{
	
	inclua biblioteca Graficos --> g 
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Matematica --> m
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(500, 500)
		g.definir_titulo_janela("Gráficos")
		inteiro k = 0
		
		enquanto (nao 	t.tecla_pressionada(t.TECLA_ESC) )
		{
			g.definir_cor(g.criar_cor(210,15,20)) 
			g.limpar()
			
			g.definir_cor(g.COR_PRETO)
			para (inteiro i=0 ; i<=500/20 ; i++)
			{
				para (inteiro j=0; j<=500/20 ; j++)
				{
					g.desenhar_retangulo (
					i*20 + 20*m.cosseno(k*2*m.PI/360),
					j*20 + 20*m.seno(k*2*m.PI/360), 
					5, 5, falso, verdadeiro)
				}
			}
			g.renderizar()
			u.aguarde(0.05)
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
 * @POSICAO-CURSOR = 236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */