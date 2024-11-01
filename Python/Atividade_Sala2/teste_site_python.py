def teste_de_escopo():
    def faz_local():
        spam = "spam local"

    def faz_nonlocal():
        nonlocal spam
        spam = "spam não-local"

    def faz_global():
        global spam
        spam = "spam global"

    spam = "spam teste"
    faz_local()
    print("Após atribuição local:", spam)
    faz_nonlocal()
    print("Após atribuição não-local:", spam)
    faz_global()
    print("Após atribuição global:", spam)

teste_de_escopo()
print("No escopo global:", spam)