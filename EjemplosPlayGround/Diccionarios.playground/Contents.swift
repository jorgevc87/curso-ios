import UIKit

 //Sintaxis Diccionario
let myClassicDictionary = Dictionary<Int, String>()

var myModernDictionary = [Int:String]()

//añadir datos
myModernDictionary = [001: "Jorge", 002: "Villavicencio"]
myModernDictionary[003] = "Ana"
myModernDictionary[004] = "Sara"
myModernDictionary[005] = "Pedro"


//Acceso a un dato
myModernDictionary[002]

//La clave del diccionario es unica
myModernDictionary[002] = "Brais Moure"
myModernDictionary.updateValue("Brais More", forKey: 002 )

//Borrar dato
myModernDictionary[002] = nil
  




