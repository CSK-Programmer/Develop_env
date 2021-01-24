
class super_class():
    def __init__(self,str):
        print('This is super class.')
        print('Initing...')
        print('Complet!')
        print(str)
class abc(super_class):
    def __init__(self):
        print('This is class abc.')
        super().__init__('OK!')

Abc=abc()