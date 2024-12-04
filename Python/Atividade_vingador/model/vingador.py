from model.database import Database

class Vingador:
    
    STATUS_CONVOCACAO = ['Pendente', 'Comparecido', 'Ausente']
    CATEGORIAS_PERMITIDAS = ['Humano', 'Meta-Humano', 'Android', 'Deidade', 'Alienígena']
    lista_vingadores = []

    def __init__(self, id, nome_heroi, nome_real, categoria, poderes, poder_principal, fraquezas, nivel_forca, convocado='Pendente', tornozeleira=False, chip_gps=False):
        self.id = id
        self.nome_heroi = nome_heroi
        self.nome_real = nome_real
        self._categoria = categoria.capitalize()
        self.poderes = poderes
        self.poder_principal = poder_principal
        self.fraquezas = fraquezas
        self.nivel_forca = nivel_forca
        self._convocado = convocado.capitalize()
        self._tornozeleira = tornozeleira
        self._chip_gps = chip_gps
        Vingador.lista_vingadores.append(self)

    @property
    def categoria(self):
        return self._categoria
    
    # @property
    # def convocado(self):
    #     return self._convocado

    @categoria.setter
    def categoria(self, categoria):
        categoria = categoria.capitalize()
        if categoria not in self.CATEGORIAS_PERMITIDAS:
            print(f"Categoria '{categoria}' inválida.")
            self._categoria = self._solicitar_categoria_valida()
        else:
            self._categoria = categoria

    # @convocado.setter
    # def convocado(self, convocado):
    #     convocado = convocado.capitalize()
    #     if convocado not in self.STATUS_CONVOCACAO:
    #         print(f"Status '{convocado}' inválido.")
    #         self._convocado = self._solicitar_status_valido()
    #     else:
    #         self._convocado = convocado

    @property
    def tornozeleira(self):
        if self._convocado == 'Comparecido':
            return 'Ativa' if self._tornozeleira else 'Inativa'
        else:
            return 'Requisitos insuficientes'

    @tornozeleira.setter
    def tornozeleira(self, valor):
        self._tornozeleira = valor

    @property
    def chip_gps(self):
        if self.tornozeleira == 'Ativa':
            return 'Ativada' if self._chip_gps else 'Inativa'
        else:
            return 'Requisitos insuficientes'

    @chip_gps.setter
    def chip_gps(self, valor):
        self._chip_gps = valor

    def _solicitar_status_valido(self):
        while True:
            convocado = input(f"Aplique um status válido para convocação ({', '.join(self.STATUS_CONVOCACAO)}): ").capitalize()
            if convocado in self.STATUS_CONVOCACAO:
                return convocado
            print(f"Status '{convocado}' inválido.")

    # def _solicitar_categoria_valida(self):
    #     while True:
    #         categoria = input(f"Digite uma categoria válida ({', '.join(self.CATEGORIAS_PERMITIDAS)}): ").capitalize()
    #         if categoria in self.CATEGORIAS_PERMITIDAS:
    #             return categoria
    #         print(f"Categoria '{categoria}' inválida.")

    @classmethod
    def listar_vingadores(cls):
        print(f"{'Nome do Herói'.ljust(20)} |  {'Nome Real'.ljust(20)} |  {'Categoria'.ljust(15)} |  {'Convocado'.ljust(20)} |  {'Tornozeleira'.ljust(24)} |  {'Status GPS'.ljust(20)}")
        print('-' * 125)
        for vingador in cls.lista_vingadores:
            print(vingador)

    def listar_detalhes_vingador(self):
        print()
        print(f"id: {self.id}")  
        print(f"Vingador: {self.nome_heroi}")
        print(f"Nome Real: {self.nome_real}")
        print(f"Categoria: {self.categoria}")
        print(f"Poderes: {','.join(self.poderes)}")
        print(f"Poder Principal: {self.poder_principal}")
        print(f"Fraquezas: {','.join(self.fraquezas)}")
        print(f"Nível de Força: {self.nivel_forca}")
        print(f"Convocado: {self.convocado}")
        print(f"Tornozeleira: {self.tornozeleira}")
        print(f"Chip GPS: {self.chip_gps}")

    def __str__(self):
        return f'{self.nome_real.ljust(20)} |  {self.nome_heroi.ljust(20)} |  {self.categoria.ljust(15)} |  {self.convocado.ljust(20)} |  {self.tornozeleira.ljust(20)} |  {self.chip_gps.ljust(20)}'

    # def aplicar_tornozeleira(self):
    #     if self._convocado == 'Comparecido':
    #         self.tornozeleira = True
    #         return 'Tornozeleira aplicada com sucesso!'
    #     return f'{self.nome_heroi} não foi convocado ainda.'

    def aplicar_chip_gps(self):
        if not self._tornozeleira:
            return f'{self.nome_heroi} precisa estar com a tornozeleira aplicada.'
        self.chip_gps = True
        return 'Chip GPS aplicado com sucesso!'

    def convocar(self):
        self.convocado = 'Comparecido'
        return f'{self.nome_heroi} convocado!'

    def prender(self):
        return f'{self.nome_heroi} teve o mandado de prisão emitido!'

    @staticmethod
    def carregar_herois():
        try:
            db = Database()
            db.connect()
            query = "SELECT heroi_id, nome_de_heroi, identidade_secreta, categoria, poderes, principal_poder, fraquezas, nivel_de_forca FROM heroi"
            vingadores = db.select(query)
            for vingador in vingadores:
                Vingador(*vingador)
        except Exception as e:
            print(f'Erro ao carregar heroi: {e}')
        finally:
            db.disconnect()
