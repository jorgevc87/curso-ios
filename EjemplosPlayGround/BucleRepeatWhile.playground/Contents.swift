import UIKit

var numeros = [1,2,3,4,5,6,7,8,9,10]

var i = numeros.count - 1

print("Valor inicial de \(i)")

repeat {
    
    numeros.remove(at: i)
    
    print("Se elimina el elemento: \(numeros[i]) en la posicion: \(i)")
    
    i -= 1
    
} while(numeros.count > 0)


print("El arreglo está vacio")





