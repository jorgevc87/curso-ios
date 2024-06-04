//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by Jorge on 13/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
        label.text = "Cambié texto"
        label.text = "Cambié texto por segunda vez"
        label.text = "Cambié texto por tercera vez"
        label.text = "Cambié texto por cuarta vez"
    }

    @IBAction func CambiarTexto(_ sender: Any) {
        
        label.text = "Hola Mundo Cruel"
        
    }
    
}

