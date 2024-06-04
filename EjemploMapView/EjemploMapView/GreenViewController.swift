//
//  GreenViewController.swift
//  EjemploMapView
//
//  Created by Jorge on 16/05/24.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.isHidden = true
        
        mySearchBar.delegate = self
        
    }
}

extension GreenViewController : UISearchBarDelegate {
    
    //Este evento captura el momento en el que se dá click en el boton
    //Buscar del teclado
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        //Ocultar el teclado
        mySearchBar.resignFirstResponder()
        
        //Mostrar lo que ingresamos en la barra de busqueda
        //en el label lo que se ingresó en la barra de busqueda
        myLabel.text = mySearchBar.text
        //Mostrar el label oculto
        myLabel.isHidden = false
    }
}
