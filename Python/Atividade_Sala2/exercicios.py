def media(numeros):
    return sum(numeros) / len(numeros)

# print(media([2, 4, 6]))

def mediana(numeros):
    numeros.sort()
    comprimento_lista = len(numeros)
    if comprimento_lista % 2 == 0:
        return (numeros[comprimento_lista - 3] + numeros[comprimento_lista - 2]) / 2 
    else:
        return numeros[int((comprimento_lista - 1)/ 2)]

#print(mediana([6,2,4]))
#print(mediana([6,2,4,8]))

def moda(numeros):
    totais = {}
    for i in numeros:
        if i not in totais:
            totais[i] = 1
        else:
            totais[i] += 1
    
    modas = []
    maior_valor = 0
    totais_lista = list(totais.values())
    totais_lista.sort()
    maior_valor = totais_lista[-1]
  
    for chave in totais:
        if totais[chave] == maior_valor:
            modas.append(chave)

    return modas

# print(moda([55,11,33,11]))

def calcular_amplitude(numeros):
    numeros.sort()
    return numeros[-1] - numeros[0]

# print(calcular_amplitude([1, 2, 3, 4, 50]))