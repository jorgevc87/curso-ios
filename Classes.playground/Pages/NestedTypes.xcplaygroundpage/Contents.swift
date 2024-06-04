import Foundation

struct ChessPice {
    
    let color: Color
    let type: PieceType
    
    enum Color: String {
        case white = "blanco"
        case black = "negro"
    }
    
    enum PieceType: String {
        case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfil", knight = "Caballo", pawn = "Peón"
        
        struct Number {
            let number: Int
        }
        
        var number : Number {
            switch self {
            case .king:
                //code
                print("drfger")
                return Number(number: 1)
            case .queen:
                print("drfger")
                return Number(number: 2)
            case .rock:
                print("drfger")
                return Number(number: 3)
            case .bishop:
                print("drfger")
                return Number(number: 4)
            case .knight:
                print("drfger")
                return Number(number: 5)
            case .pawn:
                print("drfger")
                return Number(number: 6)
            }
        }
    }
    
    var description: String {
        return "Hay \(type.number.number) piezas de ajedrez es de color \(color.rawValue) y de tipo \(type.rawValue)"
    }
}

let myPiece = ChessPiece(color: .black, type: .rock)

print(myPiece.description)









