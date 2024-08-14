programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro vet[10]//Declaramos um vetor com 10 posições
		preencher (vet)
		exibir(vet)
	}
	funcao preencher(inteiro v1[])
	{
		para(inteiro i=0;i<10;i++)
		{
			v1[i]= u.sorteia(1,100)	
		}
	}
	funcao exibir (inteiro v2[])
	{
		para(inteiro gg=0;gg<10;gg++)
		{
			escreva(v2[gg]," ")	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 310; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 6, 10, 3}-{v2, 17, 24, 2}-{v1, 10, 26, 2}-{gg, 19, 15, 2}-{i, 12, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */