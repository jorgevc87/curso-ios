import UIKit

class Automovil {
    
    var color = "negro"
    var nroLlantas = 4
    var precio = 0
    
    func encender () -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
    
}

var miObjetoMazda = Automovil()

miObjetoMazda.precio
miObjetoMazda.precio = 5000

print(miObjetoMazda.precio)




