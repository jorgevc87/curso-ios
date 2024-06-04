import UIKit

//Switch
let country = "FR"

//Sintaxis de la sentencia Switch
switch country {
case "ES":
    print("El idioma es español")
    break
    
case "MX":
    print("El idioma es español")
    break
    
case "PE":
    print("El idioma es español")
    break
    
case "CO":
    print("El idioma es español")
    break
    
case "ARG":
    print("El idioma es español")
    break
    
case "EEUU":
    print("El idioma es ingles")
    break
    
default:
    print("No conocemos el idioma")
    break
}


let age = 20

switch age {
    case 1,2,3:
    print("Eres un bebé")
    break
    
case 3...10:
    print("Eres un niño")
    break
    
case 11..<16:
    print("Eres un adolescente")
    break
    
case 70..<100:
    print("Eres un anciano")
    break
    
default:
    print(":O")
    break
}


//Switch con Enum
enum PersonalData {
    case name
    case surname
    case address
    case phone
}

let userData: PersonalData = .name

switch userData {
    
    case .name:
    print("Estamos editando el nombre")
    break
    
    case .surname:
    print("Estamos editando el apellido")
    break
    
    case .address:
    print("Estamos editando el direccion")
    break
    
    case .phone:
    print("Estamos editando el telefono")
    break
}







