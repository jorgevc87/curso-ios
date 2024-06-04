import Foundation

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber) //Casting

let myWrongStringNumber = "Brais"
let myWrongIntNumber = Int(myWrongStringNumber) //Error Casting devolverá un nulo

var myOptionalString: String?
print(myOptionalString)

myOptionalString = "Bienvenidos al curso de Swift Avanzado"
print(myOptionalString)

if myOptionalString != nil {
    print("Nuestra variable tiene un valor distinto de nulo")
} else {
    print("Nuestra variable es nula")
}

















