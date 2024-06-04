import Foundation

//Manejo de errores

func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    
    //Lanzar los errores
    if firstNumber == nil {
        throw SumError.firstNumberNil
    } else if secondNumber == nil {
        throw SumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber:secondNumber!)
    }
    
    // Realizar la suma
    return firstNumber! + secondNumber!
}

enum SumError: Error { //Para definir el enum de errores debe heredar de Error
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

//Propagacion de errores - Control de errores
do {
    print(try sum(firstNumber: 100, secondNumber: 50))
} catch SumError.firstNumberNil {
    print("El primer numero es nulo")
} catch SumError.secondNumberNil {
    print("El segundo numero es nulo")
} catch SumError.numberNegative(let firstNumber, let secondNumber) {
    print("Hay algun numero negativo. firstNumber: \(firstNumber), secondNumber: \(secondNumber)")
}





