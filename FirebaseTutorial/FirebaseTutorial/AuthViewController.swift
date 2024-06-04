//
//  AuthViewController.swift
//  FirebaseTutorial
//
//  Created by Jorge on 28/05/24.
//

import UIKit
import FirebaseAnalytics

class AuthViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var singUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Analitycs event
        
        title = "Autenticación"
        
        Analytics.logEvent(
            "InitScreen",
            parameters: [
                "message":"Integración de Firebase completa"
            ]
        )
    }
    
}

