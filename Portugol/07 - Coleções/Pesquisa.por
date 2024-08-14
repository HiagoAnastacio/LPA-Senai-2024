programa
{
	
	funcao inicio()
	{
		inteiro vetor[] = {1, 3, 5, 7, 9 }
		// vetor[0]=1, vetor[1]= 3...
		inteiro num
		logico achou  = falso

		escreva("Qual número deseja procurar? ")
		leia(num)

		para(inteiro p = 0; p < 5; p++)
		{
			se(vetor[p] == num)
			{
				escreva("Número encontrado na posição ", p, "\n")
				achou = verdadeiro 
			}
		}

		se (nao achou)
		{
			escreva("Número não encontrado\n")
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 366; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */