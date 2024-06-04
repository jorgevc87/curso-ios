import Foundation

//Type casting (validacion de tipos de dato)

let myString = "Jorge"
let myInt = 36

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Jorge Luis"
myClass.age = 36

let myArray: [Any] = [myString, myInt, myClass]

for item in myArray {
    
    //Type casting
    if item is String {
        //Downcasting
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if item is Int {
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if item is MyClass {
        let myItemMyClass = item as! MyClass
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name) y \(myItemMyClass.age)")
    }
}

//Forma mas simplificada
for item in myArray {
    if let myItemString = item as? String {
        //Se valida si es diferente de nulo y si es de tipo string en una sola instruccion
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if let myItemInt = item as? Int {
        //Se valida si es diferente de nulo y si es de tipo Int en una sola linea
        print("Item es de tipo String y tiene el valor \(myItemInt)")
    } else if let myItemMyClass = item as? MyClass {
        //Se valida si es diferente de nulo y si es de tipo MyClass
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name) y \(myItemMyClass.age)")
    }
}






