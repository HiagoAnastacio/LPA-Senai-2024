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
			
				branco (coluna * 3 + 14)
				escreva ("\\ /\n")
				branco(coluna * 3)
				escreva("( )( )( )( )( 0.0)")
				}
			senao
				{
				
		          branco(coluna * 3 + 7)
				escreva ("( )")
				branco(4)
				escreva ("\\ /\n")
				branco(coluna * 3 + 2)
				escreva("( )( ) ( )( 0.0)")
				}
				u.aguarde(250)
			}
		   }
				
   }
	funcao branco (inteiro quantidade)
   {
		inteiro brancos = 1 
		enquanto (brancos <= quantidade)
		{
			escreva (" ")
			brancos ++
		}
	
	
   }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 570; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */