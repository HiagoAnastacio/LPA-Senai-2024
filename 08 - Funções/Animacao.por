programa
{
	
inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro coluna_inicial = 0
		inteiro passos = 10
		inteiro coluna_final = coluna_inicial + passos

		para(inteiro coluna = coluna_inicial; coluna < coluna_final; coluna ++)
		{
			para(inteiro andando = 0; andando <= 1; andando++)
			{
				limpa()
				se (andando == 0)
				{
				inteiro brancos = 1 
				inteiro quantidade = coluna * 3 + 14 
				enquanto (brancos <= quantidade)
				{
					escreva(" ")
					brancos ++
				}	
				escreva ("\\ /\n")
				brancos = 1
				quantidade = coluna * 3
				enquanto (brancos <= quantidade)
				{
					escreva(" ")
					brancos ++
				}	
				escreva("( )( )( )( )( 0.0)")
				}
			senao
				{
				inteiro brancos =  1
				inteiro quantidade = coluna * 3 + 7 
				
				enquanto (brancos <= quantidade)
				{
					escreva(" ")
					brancos ++
				}	
				escreva ("( )")
				brancos = 1
				quantidade = 4
				enquanto (brancos <= quantidade)
				{
					escreva(" ")
					brancos ++
				}
				
				escreva ("\\ /\n")
				brancos = 1
				quantidade = coluna * 3 + 2
				enquanto (brancos <= quantidade)
				{
					escreva(" ")
					brancos ++
				}	
				escreva("( )( ) ( )( 0.0)")
				}
				u.aguarde(100)
		   }
				
	   }
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1205; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */