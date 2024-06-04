//
//  ViewController.swift
//  fabricaAutomoviles
//
//  Created by Jorge on 18/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var dataToSend: String? = nil
    
    // outlets
    @IBOutlet weak var btnAutoSencillo: UIButton!
    @IBOutlet weak var btnAutoMazda: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Un poco de programacion orientada a objetos
        
        var automovil = Automovil()
        
        print("El booleano que representa el automovil encendido es: \(automovil.encender())")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VCDetail" {
            //Accede al segundo ViewController
            if let detail = segue.destination as? CarDetailViewController {
                //Enviar La data que se quiera enviar
                detail.myData = dataToSend
            }
        }
    }
    
    @IBAction func btnAutoSencilloAction(_ sender: Any) {
        dataToSend = "sencillo"
        performSegue(withIdentifier: "VCDetail", sender: self)
    }
    
    @IBAction func btnAutoMaxdaAction(_ sender: Any) {
        dataToSend = "mazda"
        performSegue(withIdentifier: "VCDetail", sender: self)
    }
}
