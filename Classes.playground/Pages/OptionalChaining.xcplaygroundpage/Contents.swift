import Foundation

// Cadenas de opcionales

class Student {
    var name: String?
    var book: Book?
}

class Book {
    var pages: Int?
}

let myStudent = Student()
myStudent.name = "NomAlumno"

let myBook = Book()
myBook.pages = 50

myStudent.book = myBook

print(myStudent.name)


if let pages = myStudent.book?.pages, let name = myStudent.name {
    print("El libro de \(name) tiene \(pages) paginas")
} else {
    print("El libro no tiene paginas")
}


