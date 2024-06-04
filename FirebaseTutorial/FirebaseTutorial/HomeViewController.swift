//
//  HomeViewController.swift
//  FirebaseTutorial
//
//  Created by Jorge on 30/05/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var providerLabel: UILabel!
    @IBOutlet weak var closeSessionButton: UIButton!
    
    init(email:String, provider: ProviderType){
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title= "Inicio"
    }
    
    @IBAction func closeSessionButtonAction(_ sender: Any) {
    }
    
}
