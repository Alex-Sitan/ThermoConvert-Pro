import math
def speedFinish(vi,h):
    result = math.sqrt(vi)+2*9.8*h
    raiz = math.sqrt(result)
    print(f"la velocidad final  es: {raiz}")

def time():
    while True:
        try:
            vf = float(input("ingrese la velocidas final: "))
            vi = float(input("ingrese la velocidad inicial: "))
            tt = vi - vf / 9.8
        except:
            print("Con numeros pendejo")
        print(tt)
        break

def calalatura():
    while True:
        try:
            vi = float(input("ingrese velocidad inicial: "))
            t = float(input("ingrese el tiempo: "))
            h =  0.5 * 9.8 * t**2
        except:
            print("Con numero reverendo pendejo!!")

        print(h)
        break

def cuadro():
    print("Calcular".upper().center(50))
    print("\n")
    print("1.velocidad final".title().center(50))
    print("2.tiempo".title().center(40))
    print("3.altura".title().center(40))
    print("\n")
    while True:
        try:
            ent = int(input(">>>  "))
        except:
            print("Con numero weon!!!!")
        if (ent == 1):
            speedstart = float(input("Ingrese la velocidad inicial:"))
            heigth = float(input("Ingrese la altura del objeto: "))
            speedFinish(speedstart,heigth)
        elif (ent == 2):
            time()
        elif (ent == 3):
            calalatura()
        else:
            break





cuadro()

