programa
{
	//	Funções podem ser chamadas de procedimento, sub-rotina, método, etc.
	funcao inicio()
	{
		cadeia tt = "Olá Mundo\n"
		escrever(tt)//"s" é um argumento

		inteiro soma = somar (2,5)
		escreva("A soma é: ", soma,"\n")
	}
	funcao escrever(cadeia tt)//"s" é um parâmetro
	{
		escreva(tt)
	}
	funcao inteiro somar(inteiro x, inteiro y)
	{
		retorne x+y
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 222; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */