import UIKit

var contadora = 0

//Los ciclos For sirven para iterar sobre una coleccion de datos/items y ejecutar un bloque de codigo por cada uno de los items de la coleccion o rango.

//variable      //collection-range
for numero in 1..<4 {
    contadora = contadora + 1
	print(numero)
}

//FOR con una coleccion
var paises = ["MX","EEUU", "JP"]

for pais in paises {
    print(pais)
}


//FOR con un diccionario
var paisesDiccionario = ["MX":"Mexico","EEUU":"Estados Unidos", "JP":"Japon"]

for (pais, significado) in paisesDiccionario {
    print("\(pais) --- \(significado)")
}

//FOR con operaciones matematicas
var numeros = [1,2,3,4,5,6,7,8,9]
var suma = 0

for numero in numeros {
    suma = suma + numero
}

print("La suma de los numeros es: \(suma)")







