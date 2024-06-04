//
//  ViewController.swift
//  CiclosVida
//
//  Created by Jorge on 19/05/24.
//

import UIKit

class ViewController: UIViewController {

    //La app se terminó de cargar
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Estoy en VC1 y se activó -> \(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Estoy en VC1 y se activó -> \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Estoy en VC1 y se activó -> \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Estoy en VC1 y se activó -> \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Estoy en VC1 y se activó -> \(#function)")
    }
}

