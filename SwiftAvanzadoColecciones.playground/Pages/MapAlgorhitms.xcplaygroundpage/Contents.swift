import UIKit

// Algoritmos para Colecciones (Mapeado)

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [
    5: "Cinco",
    8: "Ocho",
    1: "Uno",
    0: "Cero",
    3: "Tres",
    9: "Nueve",
    7: "Siete",
    2: "Dos",
    4: "Cuatro",
    6: "Seis"
]

var mySet: Set = [5,8,1,0,3,9,7,2,4,6]

//Sumar 10 a cada numero del array con la funcion map()
let myMapArray = myArray.map { (myInt) -> Int in
    return myInt + 10
}

//El nuevo array con todos los items sumado 10 se almacenan
//En un nuevo array
print("Estado inicial myArray: \(myArray)")
print("Estado transformado myMapArray: \(myMapArray)")

let myMapDictionary = myDictionary.map{(myElement) -> Int in
    return (myElement.key as Int ) + 10
}

print("Estado inicial myDictionary: \(myDictionary)")
print("Estado transformado myMapDictionary: \(myMapDictionary)")




























