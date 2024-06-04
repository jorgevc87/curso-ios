//
//  CrearConstraintViewController.swift
//  AdvancedAutoLayout
//
//  Created by Jorge on 21/05/24.
//

import UIKit

class CrearConstraintViewController: ViewController {
    
    @IBOutlet weak var yellowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Constraints de tamaño programaticamente (Cuadrado)
        yellowView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        yellowView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        //Constraints de posicion programaticamente
        
        //Le decimos al app que los constraint serán declaradas por codigo
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        //seteando leading a 16
        view.addConstraint(NSLayoutConstraint(item: yellowView!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
        
        yellowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        
    }
    
}
