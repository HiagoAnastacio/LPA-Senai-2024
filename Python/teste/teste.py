import os
import time

class Vingador:
    lista_vingadores = []
    
    class categoria_vingadores:
        HUMANO = "HUMANO"
        META_HUMANO = "META HUMANO"
        ALIENIGENA = "ALIENIGENA"
        DEUS = "DEUS"
 
    def __init__(self, vulgo, nome, categoria, poderes, poder_principal, fraquezas, nivel_de_forca):
        self.vulgo = vulgo
        self.nome = nome
        self.categoria = categoria.upper()
        self.poderes = poderes
        self.poder_principal = poder_principal
        self.fraquezas = fraquezas
        self.nivel_de_forca = nivel_de_forca

    def __str__(self):
        return f'{self.vulgo.ljust(20)} | {self.nome.ljust(20)} | {self.categoria.ljust(20)} | {self.poderes.ljust(20)} | {self.poder_principal.ljust(20)} | {self.fraquezas.ljust(20)} | {str(self.nivel_de_forca).ljust(20)}'

class Interface:
    animacao = True
    
    @staticmethod
    def animacaoLinhas(texto, duracao):
        for ch in texto:
            time.sleep(duracao)
            print(ch, end="", flush=True)

    @staticmethod
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
 
    @staticmethod
    def VoltarMenu():
        input("\nPressione Enter para voltar ao menu...")
        os.system("cls")
        Interface.menu()
    
    @staticmethod
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
 
    @staticmethod
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
            
            Interface.ler_opcao_usuario(Interface.ver_detalhes_vingador, Interface.deletar_vingador, Interface.VoltarMenu)
    
    @staticmethod
    def ver_detalhes_vingador():
        try:
            indice = int(input("\nDigite o número do vingador para visualizar detalhes (1, 2, ...): ")) - 1
            vingador = Vingador.lista_vingadores[indice]
            print("\nDetalhes do Vingador:")
            print(f"Vulgo: {vingador.vulgo}")
            print(f"Nome: {vingador.nome}")
            print(f"Categoria: {vingador.categoria}")
            print(f"Poderes: {vingador.poderes}")
            print(f"Poder principal: {vingador.poder_principal}")
            print(f"Fraquezas: {vingador.fraquezas}")
            print(f"Nível de força: {vingador.nivel_de_forca}")
        except (ValueError, IndexError):
            print("Vingador não encontrado. Tente novamente.")
        Interface.VoltarMenu()
    
    @staticmethod
    def deletar_vingador():
        try:
            indice = int(input("\nDigite o número do vingador para deletar (1, 2, ...): ")) - 1
            vingador = Vingador.lista_vingadores[indice]
            Vingador.lista_vingadores.remove(vingador)
            print(f"Vingador {vingador.vulgo} foi deletado com sucesso!")
        except (ValueError, IndexError):
            print("Vingador não encontrado. Tente novamente.")
        
        # Oferece a opção de voltar ao menu após deletar o vingador
        print("\nO que você deseja fazer agora?")
        print("1. Voltar ao menu")
        Interface.ler_opcao_usuario(Interface.VoltarMenu, None, None)
    
    @staticmethod
    def sair():
        print("Encerrando o programa...")
        time.sleep(1)
        exit()
    
    @staticmethod
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


