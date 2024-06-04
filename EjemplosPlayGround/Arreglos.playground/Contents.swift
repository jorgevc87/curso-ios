import UIKit

var arregloNumeros = [1,2,3]

let arregloNumerosInmutable = [3,2,1]

print(arregloNumeros)
print(arregloNumeros[2])
print(arregloNumerosInmutable[0])

//Agregar un nuevo elemento al final del arreglo
arregloNumeros.append(5)

//Agregar elementos en una posicion especifica
arregloNumeros.insert(4, at: 3)

//Eliminar valores
arregloNumeros.removeLast()

//Eliminar todos los valores
arregloNumeros.removeAll()

print(arregloNumeros)

//Arreglo vacio de tipo de datos entero
var arregloVacioEnteros:[Int] = []



print(arregloVacioEnteros)




