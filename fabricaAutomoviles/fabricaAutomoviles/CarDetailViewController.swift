//
//  CarDetailViewController.swift
//  fabricaAutomoviles
//
//  Created by Jorge on 18/05/24.
//

import UIKit

class CarDetailViewController: ViewController {
    
    
    @IBOutlet weak var labelInfo: UILabel!
    
    var myData : String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let d = myData {
            print(d)
        }
        
        if let data = myData {
            labelInfo.text = data
        }
    }
    
    //Actions
    @IBAction func btnEncederAction(_ sender: Any) {
    }
    
    @IBAction func btnApagarAction(_ sender: Any) {
    }
    
    @IBAction func btnEncenderAction(_ sender: Any) {
    }
    
}
