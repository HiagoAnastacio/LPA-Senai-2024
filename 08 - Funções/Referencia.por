programa
{
	
	funcao inicio()
	{
		inteiro r = 2
		escreva ("O valor de s é ", test( r ),"\n")//"r" é passado por referência
		escreva ("O valor de r é ", r)
	}
	/*Quando o "&" é usado ao declarar um parâmetro, permitimos a passagem por referência , o que significa que o argumento 
	 * e o parâmetro ocupam o mesmo lugar na memória e portanto a alteração do valor de um implica na alteração do valor do 
	 * outro.
	 */
	funcao inteiro test(inteiro &s)
	{
		s = s + 1
		retorne s
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 491; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */