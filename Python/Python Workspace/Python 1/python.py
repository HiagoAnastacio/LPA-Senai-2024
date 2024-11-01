# Escrever um programa que armazene as informações de três carros,
# e apresente-as na tela para o usuário.

class Carro:
    def __init__(self, modelo, ano , placa, marca, cor): #método construtor (Fazer a class trabalhar consigo mesma)
        # pass
        self.modelo = modelo #Declaração de um atributo e atribuição de um valor (variáveis de instância)
        self.ano = ano #(variáveis de instância)
        self.placa = placa #(variáveis de instância)
        self.marca = marca #(variáveis de instância)
        self.cor = cor #(variáveis de instância)

    def __str__(self):
        return f' |{self.modelo} da marca: {self.marca}\n |ano: {self.ano}\n |cor: {self.cor}\n |placa: {self.placa}\n'

carro1 = Carro('Palio', 1997, 'ABC1234', 'Fiat', 'cinza')
carro2 = Carro('Classic', 2015, 'XYZ1234', 'Chevrolet', 'vermelho')
carro3 = Carro('Fiesta', 2002, 'XYZ4321', 'Ford', 'preto')
carro4 = Carro('Fusca', 1942, 'HIT1944', 'VVolksWagen', 'azul')

print(carro1)
print(carro2)
print(carro3)

print(f'\n |A cor do {carro2.modelo} registrado é {carro2.cor}')
print(f' |A marca do {carro3.modelo} registrado é {carro3.marca}')

#     modelo_carro1 = 'Palio'
#     ano_carro1 = 1997
#     placa_carro1 = 'ABC1234'
#     marca_carro1 = 'Fiat'
#     cor_carro_1 = 'cinza'
#     velocidade_carro1 = 0

# def acelerar(valor):
#     # global velocidade_carro_1
#     velocidade_carro1 = valor 
#     return f'O carro está a {velocidade_carro1} km/h'

# print(f'\n {modelo_carro1} da marca: {marca_carro1}\n ano: {ano_carro1}\n cor: {cor_carro_1}\n placa: {placa_carro1}.\n')

# print(acelerar(25),"\n")

#  carro2 = 'Fusca'
#  carro3 = 'Palio'