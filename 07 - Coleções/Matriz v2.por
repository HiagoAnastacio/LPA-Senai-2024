programa
{
	inclua biblioteca Util --> u
 	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
	real coordenadas [5][2] //= { {24.5, 30.7}, {40.0, 16.0}, {-45.6, 33.4}, {16.0,-79.1} }
	
	para (inteiro lat = 0; lat < u.numero_linhas(coordenadas);lat++)
		{
			para (inteiro log = 0; log < u.numero_colunas(coordenadas);log++) 
				{
				coordenadas [lat][log] = mat.arredondar (u.sorteia(-9000, 9000),2)/100.0
				}
		
		
		
		}
	
	}
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */