import Foundation

//Salida rapida con guard let

var myOptionalString: String?

func myFunction() {
    //Guard let detendrá la ejecucion si es que la variable evaluada es nulo
    
    guard let myString = myOptionalString else {
        print("myString es nulo")
        return
    }
    
    print("El valor de myString: \(myString)")
}


myFunction() //MyString es nulo

myOptionalString = "Asignando valor diferente de nulo"

myFunction() //Ahora myOptionalString es diferente de nulo


