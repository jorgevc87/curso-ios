//
//  ViewController.swift
//  TableViews
//
//  Created by Jorge on 16/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let myCountries = ["Perú", "Colombia", "Argentina", "Ecuador", "Chile", "Brasil"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none // TableView sin separador
        //tableView.allowsSelection = false //El usuario no puede hacer una seleccion de celda
        tableView.allowsMultipleSelection = false //El usuario puede seleccionar varias celdas a la vez
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView() //Coloca una vista vacia donde termina los items del listado
        
        //Asignando el customCell al tableView
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
    }
}


extension ViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2 //Se establece que el listado tendrá 2 secciones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            //Creacion de una celda
            var cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            
            //Reutilizacion de una celda para optimizar el uso de recursos
            var myCell = tableView.dequeueReusableCell(withIdentifier: "myCell")
            
            if myCell == nil {
                //Si la celda es nula entonces se crea una nueva celda
                myCell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            }
            
            myCell?.backgroundColor = .gray
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
            myCell?.textLabel?.text = myCountries[indexPath.row]
            
            return myCell!
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell") as? MyCustomTableViewCell
        
        cell?.myFirstLabel.text = String(indexPath.row + 1)
        cell?.mySecondLabel.text = myCountries[indexPath.row]
        
        return cell!
    }
}

//MARK - UITableDelegate
extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
         /*
          Cuando estamos en la primera seccion entonces se muestra la celda estandar
          del tableview, cuando es otra seccion entonces se muestra el customviewCell.
          
          Por eso se devuelve una altura u otra dependiendo de la seccion
         */
        
        if indexPath.section == 0 {
            return 50
        }
        
        return UITableView.automaticDimension
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row seleccionado en la posicion \(indexPath.row)")
    }
    
}



