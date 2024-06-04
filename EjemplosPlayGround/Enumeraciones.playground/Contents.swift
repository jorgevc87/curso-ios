import UIKit

//Sintaxis Enumeracion
enum PersonalData {
    case name
    case surname
    case address
    case phone
}

var currentData:PersonalData = .name
var input = "Brais"

currentData = .phone
input = "666666666"

//Enumeraciones con valores asociados
enum ComplexPersonalData {
    case name(String)
    case surname(String, String)
    case address(String, Int)
    case phone(Int)
}

var currentComplexData:ComplexPersonalData = .name("Brais")

currentComplexData = .address("Calle Test", 5)

//Enumaeraciones con el mismo tipo de valor
enum RawPersonalData:String {
    case name = "Nombre"
    case surname = "Apellidos"
    case address = "Direccion"
    case phone = "Numero de Telefono"
}

RawPersonalData.name.rawValue
RawPersonalData.surname.rawValue
















