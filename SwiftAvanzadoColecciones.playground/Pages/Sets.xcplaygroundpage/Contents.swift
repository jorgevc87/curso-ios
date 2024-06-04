import Foundation

//Conjuntos
//Declaracion de un nuevo Set
var mySet = Set<String>()
let mySet2: Set<String> = ["Jorge", "Luis", "Villavicencio", "Correa", "36"]

//Insercion de uno en uno
mySet.insert("Jorge")
mySet.insert("Luis")
mySet.insert("Villavicencio")
mySet.insert("Correa")
mySet.insert("36")
print(mySet)

//Acceso
if mySet.contains("Jorge") {
    print("Existe")
} else {
    print("No existe")
}

//Modificacion
mySet.remove("36")
print(mySet)

//Acceso y modificacion por indice
if let index = mySet.firstIndex(of: "Jorge") {
    mySet.remove(at: index)
}

print(mySet)

//Iteracion
mySet.insert("32")
mySet.insert("Brais")
mySet.insert("Juan")
mySet.insert("Bienvenidos al curso de Swift")

for myElement in mySet {
    print(myElement)
}

//Operaciones de conjunto

let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

// Interseccion
print("Interseccion: \(myIntSet.intersection(myIntSet2))")

// Diferencia simetrica
print("Diferencia simétrica: \(myIntSet.symmetricDifference(myIntSet2))")

//Union
print("Unión: \(myIntSet.union(myIntSet2))")

//Substraction
print("Subtracting: \(myIntSet.subtracting(myIntSet2))")
print("Subtracting: \(myIntSet2.subtracting(myIntSet))")














