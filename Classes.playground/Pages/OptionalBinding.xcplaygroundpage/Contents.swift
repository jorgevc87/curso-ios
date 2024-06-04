import Foundation

//Enlaces opcionales
var myOptionalString: String?

myOptionalString = "Dato"

/*
 myString solo tendrá valor si es que myOptionalString es diferente de
 nulo con esta sintaxis
*/

if let myString = myOptionalString {
    //myOptionalString es diferente de null
    print(myString)
} else {
    //myOptionalString
    print(myOptionalString)
}

var myOptionalString2: String? = "Data2"
var myOptionalString3: String? = "Data3"

//var myOptionalString2: String?
//var myOptionalString3: String?

if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3 {
    //Este bloque se ejecutará solo cuando myOptionalString, myOptionalString2
    //y myOptionalString3 Sean diferente de nulo
    
    print("\(myString) \(myString2) \(myString3)")
} else if let myString = myOptionalString{
 
    print("Solo \(myString) es diferente de nulo")
    
} else {
    print("Alguna variable es nula")
}

//Desempaquetado forzado
print(myOptionalString!) //Le decimos que esta variable es no nula obligatoriamente



















