//
//  ViewController.swift
//  Navegacion
//
//  Created by Jorge on 16/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    // Conexiones
    @IBOutlet weak var btnNegro: UIButton!
    @IBOutlet weak var btnRosa: UIButton!
    @IBOutlet weak var btnAzul: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Acciones
    @IBAction func botonNegro(_ sender: Any) {
        
        print("Soy el boton Negro")
        
        //Ir a la pantalla Negro
        performSegue(withIdentifier: "VCRosa", sender: "negro")
    }
    
    @IBAction func botonRosa(_ sender: Any) {
        
        print("Soy el boton Rosa")
        
        //Ir a la pantalla Rosa
        performSegue(withIdentifier: "VCRosa", sender: "rosa")
        
    }
    
    @IBAction func botonAzul(_ sender: Any) {
        
        print("Soy el boton Azul")
        
        //Ir a la pantalla Azul
        performSegue(withIdentifier: "VCRosa", sender: "azul")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VCRosa" {
            
            if let destino = segue.destination as? ViewControllerRosa {
                destino.titulo = sender as? String
            }
            
        }
    }
}

