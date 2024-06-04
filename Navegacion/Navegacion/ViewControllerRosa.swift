//
//  ViewControllerRosa.swift
//  Navegacion
//
//  Created by Jorge on 16/05/24.
//

import UIKit

class ViewControllerRosa: UIViewController {
    
    var titulo : String?
    
    @IBOutlet weak var labelTitulo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let t = titulo {
            labelTitulo.text = t
             
            switch t {
            case "negro":
                print("Negro")
                view.backgroundColor = UIColor.black
                labelTitulo.textColor = UIColor.white
            case "rosa":
                print("Rosa")
                view.backgroundColor = UIColor.systemPink
                labelTitulo.textColor = UIColor.black
            case "azul":
                print("Azul")
                view.backgroundColor = UIColor.blue
                labelTitulo.textColor = UIColor.white
            default:
                print("Default")
                view.backgroundColor = UIColor.white
                labelTitulo.textColor = UIColor.black
            }
        }
    }
    
    
    
}
