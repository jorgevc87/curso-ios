import Foundation

//Protocols
protocol PersonProtocol {
    var name: String { get set } //Esta variable se le puede asignar y obtener
    var age: Int { get set}
    
    func fullName() -> String
}

struct Programmer: PersonProtocol {
    
    var name: String
    var age: Int
    
    var language: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) y su language favorito es \(language)"
    }
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    
    var subject: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) y el curso que dicta es: \(subject)"
    }
}

let myProgrammer = Programmer(name: "Jorge", age: 36, language: "Swift")
let myTeacher = Teacher(name: "Miguel", age: 50, subject: "Matematicas")

print(myProgrammer.fullName())
print(myTeacher.fullName())


//Protocolo delegado
class FirstClass: SecondClassProtocol {
    
    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    
    func call() -> {
        print("Estoy de vuelta...")
    }
}

//Protocolo delegado
protocol SecondClassProtocol {
    func call()
}

class SecondClass {
    
    var delegate: SecondClassProtocol?
        
    func callFirst() {
        sleep(5)
        
        delegate?.call()
    }
}



















