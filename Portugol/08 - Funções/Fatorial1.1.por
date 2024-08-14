programa
{
	
	funcao inicio()
	{
		inteiro n= 5
		fatorial(n)
		escreva("O fatorial de ",n," é ", fatorial(n),"\n")	
		escreva("O fatorial de ",n," usando fatorial 2° é ", fatorial_2(n) ,"\n")	
	}
	funcao inteiro fatorial (inteiro n)
	{
		inteiro i = n
		inteiro resultado = 1
		enquanto (i > 0)
			{
				resultado = resultado*i
				i--
			}
			retorne resultado
	}
	funcao inteiro fatorial_2(inteiro n)
	{
			se (n == 1 ou n == 0)
			{
				retorne 1
			}
			retorne n * fatorial_2(n-1) //Recursividade
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 508; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 6, 10, 1}-{n, 11, 34, 1}-{i, 13, 10, 1}-{resultado, 14, 10, 9}-{n, 22, 35, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */