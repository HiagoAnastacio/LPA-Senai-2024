# vingador.py
import time
import os 

class Vingador:
    lista_vingadores = []
    
    categorias_permitidas = ["HUMANO", "META-HUMANO", "ANDROID", "DEIDADE", "ALIENIGENA"]
    
    def __init__(self, nome_heroi, nome_real, categoria, poderes, poder_principal, fraquezas, nivel_de_forca):
        # Validação de categoria
        while categoria.upper() not in Vingador.categorias_permitidas:
            raise ValueError(f"Categoria inválida. As categorias permitidas são: {', '.join(Vingador.categorias_permitidas)}")

        self.nome_heroi = nome_heroi
        self.nome_real = nome_real
        self.categoria = categoria.upper()
        self.poderes = poderes.split(",")  # Lista de poderes
        self.poder_principal = poder_principal
        self.fraquezas = fraquezas.split(",")  # Lista de fraquezas
        self.nivel_de_forca = int(nivel_de_forca)
        self.status_convocacao = False 
        self.status_tornozeleira = False
        self.status_chip_gps = False
        self._convocado = False  # Status da convocação
    
        # Validando o nível de força
        if not (0 <= self.nivel_de_forca <= 10000):
            raise ValueError("O nível de força deve ser um número entre 0 e 10000.")
        
        Vingador.lista_vingadores.append(self)
    
    @classmethod
    def buscar_vingador(cls, nome):
        # Buscando vingador por nome de herói ou nome real
        for v in cls.lista_vingadores:
            if v.nome_heroi.lower() == nome.lower() or v.nome_real.lower() == nome.lower():
                return v
        return None

    def convocar(self):
        self._convocado = True
        self.status_convocacao = True

    def aplicar_tornozeleira(self):
        if not self._convocado:
            raise ValueError(f"{self.nome_heroi} não foi convocado. Não é possível aplicar a tornozeleira.")
        if self.nome_heroi in ["Hulk"]:
            print(f"{self.nome_heroi} resiste à tornozeleira! Mas após a Viuva Negra o convencer a tornozeleira foi aplicada com sucesso.")
        if self.nome_heroi in ["Thor"]:
            print(f"{self.nome_heroi} resiste à tornozeleira! Porém Odin é investidor dos Novos Vingadores, então o Thor é 'coagido' a aceitar a aplicação da tornozeleira com sucesso.")
        else:
            print(f"Tornozeleira aplicada com sucesso a {self.nome_heroi}.")
        self.status_tornozeleira = True 

    def aplicar_chip_gps(self):
        if not self.status_tornozeleira:
            raise ValueError(f"Não é possível aplicar o chip GPS em {self.nome_heroi} sem antes aplicar a tornozeleira.")
        print(f"Chip GPS aplicado a {self.nome_heroi}.")
        self.status_chip_gps = True
    
    def emitir_mandado(self):
        print(f"Mandado de prisão emitido para {self.nome_heroi}.")

    def __str__(self):
        return f'{self.nome_heroi.ljust(20)} | {self.nome_real.ljust(20)} | {self.categoria.ljust(15)} | {self.status_convocacao} | {self.status_tornozeleira} | {self.status_chip_gps}'
    
    @staticmethod
    def listar_vingadores():
        if not Vingador.lista_vingadores:
            print("Nenhum vingador cadastrado.")
        else:
            print(f'{"Nome de herói".ljust(20)} | {"Nome real".ljust(20)} | {"Categoria".ljust(15)} | {"Convocação".ljust(15)} | {"Tornozeleira".ljust(15)} | {"Chip GPS".ljust(15)}')
            for vingador in Vingador.lista_vingadores:
                print(vingador)
        input("Digite ENTER para continuar...")
