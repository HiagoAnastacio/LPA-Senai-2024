# Escrever um programa que armazene as informações de três carros,
# e apresente-as na tela para o usuário.
#TESTE DE UPLOAD

class Carro:
    def __init__(self, modelo, ano , placa, marca, cor): #método construtor
        # pass <-- (Para "ignorar" a classe e seguir com o código). O self(__init__) é para identificar que a classe está trabalhando com os próprios atributos.
        self.modelo = modelo #Declaração de um atributo e atribuição de um valor (variáveis de instância)
        self.ano = ano #(variáveis de instância)
        self.placa = placa #(variáveis de instância)
        self.marca = marca #(variáveis de instância)
        self.cor = cor #(variáveis de instância)

    def __str__(self):
        return f' |{self.modelo} da marca: {self.marca}\n |ano: {self.ano}\n |cor: {self.cor}\n |placa: {self.placa}\n'

Palio = Carro('Palio', 1997, 'ABC1234', 'Fiat', 'cinza')# instanciamneto de um objeto
Classic = Carro('Classic', 2015, 'XYZ1234', 'Chevrolet', 'vermelho')
Fiesta = Carro('Fiesta', 2002, 'XYZ4321', 'Ford', 'preto')
Fusca = Carro('Fusca', 1942, 'HIT1944', 'VVolksWagen', 'azul')

print(Palio)
print(Classic)
print(Fiesta)

print(f'\n |A cor do {Classic.modelo} registrado é {Classic.cor}')
print(f' |A marca do {Fiesta.modelo} registrado é {Fiesta.marca}')

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