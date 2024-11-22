import os
import enum
import time
 
class Vingador:
    lista_vingadores = []
    lista_poderes = [
        ""
    ]
    class CategoriaVingador(enum.Enum):
        HUMANO = "HUMANO"
        META_HUMANO = "META HUMANO"
        ALIENIGENA = "ALIENIGENA"
        DEUS = "DEUS"
 
    def __init__(self, vulgo, nome, categoria, poderes, poder_principal, fraquezas, nivel_de_forca):
       
        self.vulgo = vulgo
        self.nome = nome
        self.categoria = CategoriaVingador[categoria.upper()]
        self.poderes = poderes
        self.poder_principal = poder_principal
        self.fraquezas = fraquezas
        self.nivel_de_forca = nivel_de_forca
 
    def __str__(self):
        return f'{self.vulgo.ljust(20)} | {self.nome.ljust(20)} | {self.categoria.ljust(20)} | {self.poderes.ljust(20)} | {self.poder_principal.ljust(20)} | {self.fraquezas.ljust(20)} | {str(self.nivel_de_forca).ljust(20)}'
 
 
 
class Interface():
    animacao = True
    def animacaoLinhas(testiculo, duracao):
        for ch in testiculo:
            time.sleep(duracao)
            print(ch, end="", flush=True)
    def menu():
        if Interface.animacao == True:
            Interface.animacaoLinhas('''

░██████╗░█████╗░░█████╗░██╗███████╗██████╗░░█████╗░██████╗░███████╗  ███╗░░██╗░█████╗░██╗░░░██╗░█████╗░░██████╗
██╔════╝██╔══██╗██╔══██╗██║██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔════╝  ████╗░██║██╔══██╗██║░░░██║██╔══██╗██╔════╝
╚█████╗░██║░░██║██║░░╚═╝██║█████╗░░██║░░██║███████║██║░░██║█████╗░░  ██╔██╗██║██║░░██║╚██╗░██╔╝██║░░██║╚█████╗░
░╚═══██╗██║░░██║██║░░██╗██║██╔══╝░░██║░░██║██╔══██║██║░░██║██╔══╝░░  ██║╚████║██║░░██║░╚████╔╝░██║░░██║░╚═══██╗
██████╔╝╚█████╔╝╚█████╔╝██║███████╗██████╔╝██║░░██║██████╔╝███████╗  ██║░╚███║╚█████╔╝░░╚██╔╝░░╚█████╔╝██████╔╝
╚═════╝░░╚════╝░░╚════╝░╚═╝╚══════╝╚═════╝░╚═╝░░╚═╝╚═════╝░╚══════╝  ╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░░╚════╝░╚═════╝░

██╗░░░██╗██╗███╗░░██╗░██████╗░░█████╗░██████╗░░█████╗░██████╗░███████╗░██████╗
██║░░░██║██║████╗░██║██╔════╝░██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝
╚██╗░██╔╝██║██╔██╗██║██║░░██╗░███████║██║░░██║██║░░██║██████╔╝█████╗░░╚█████╗░
░╚████╔╝░██║██║╚████║██║░░╚██╗██╔══██║██║░░██║██║░░██║██╔══██╗██╔══╝░░░╚═══██╗
░░╚██╔╝░░██║██║░╚███║╚██████╔╝██║░░██║██████╔╝╚█████╔╝██║░░██║███████╗██████╔╝
░░░╚═╝░░░╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═════╝░
''', 0.01)
        Interface.animacao = False
        print('Seja bem-vindo! Escolha uma das opções abaixo\n')
        print('1. Cadastrar vingador')
        print('2. Ver lista de vingadores ')
        print('3. Sair')
        Interface.ler_opcao_usuario(Interface.Cadastro, Interface.listar_vingadores, Interface.sair)
 
    def VoltarMenu():
        input("\nPressione Enter para voltar ao menu...")
        os.system("cls")
        Interface.menu()
    def Cadastro():
        vingador = Vingador(
            input('Vulgo: '),
            input('Nome: '),
            input('Categoria: '),
            input('Poderes: '),
            input('Poder principal: '),
            input('Fraquezas: '),
            input('Nivel de força: ')
        )
        Vingador.lista_vingadores.append(vingador)
        print(f'Vingador cadastrado com sucesso! Vulgo: {vingador.vulgo}, Nome: {vingador.nome}')
        Interface.VoltarMenu()
 
    def listar_vingadores():
        if not Vingador.lista_vingadores:
            print("Nenhum vingador cadastrado.")
        else:
            print(f'{"Vulgo".ljust(20)} | {"Nome".ljust(20)} | {"Categoria".ljust(20)} | {"Poderes".ljust(20)} | {"Poder principal".ljust(20)} | {"Fraquezas".ljust(20)} | {"Nivel de forca".ljust(20)}')
            for vingador in Vingador.lista_vingadores:
                print(vingador)
            print("\nO que você deseja fazer")
            print("1. Visualizar mais detalhes de um Vingador")
            print("2. Deletar um Vingador")
            print("3. Voltar ao menu")
            Interface.ler_opcao_usuario(Interface.menu(), Interface.Cadastro_usuario(), Interface.menu())
        Interface.VoltarMenu()
 
    def sair():
        print("Encerrando o programa...")
        time.sleep(1)
        exit()
 
    def ler_opcao_usuario(met1=None, met2=None, met3=None):
        opcao = input("\nDigite aqui: ")
        os.system('cls')
        if opcao == "1" and met1:
            met1()
        elif opcao == "2" and met2:
            met2()
        elif opcao == "3" and met3:
            met3()
        else:
            print("Opção inválida. Tente novamente.")
            Interface.VoltarMenu()
 
 