class Pessoa:
    def set_nome(self, nome):
        self.nome = nome

    def set_idade(self, idade):
        self.idade = idade

    def get_nome(self):
        return self.nome
    
    def get_idade(self):
        return self.idade

agenda = []

while True:    
    nome = input("Digite o nome: ")

    if nome == "x":
        break
    agenda.append(Pessoa())
    agenda[-1].set_nome(nome)
    agenda[-1].set_idade(input("Digite a idade: "))

for pessoa in agenda:
    print(f"Nome: {pessoa.get_nome()}, idade: {pessoa.get_idade()}")