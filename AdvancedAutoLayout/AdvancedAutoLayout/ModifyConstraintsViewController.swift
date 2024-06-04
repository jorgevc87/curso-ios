//
//  ModifyConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Jorge on 21/05/24.
//

import UIKit

class ModifyConstraintsViewController: ViewController {
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    //Outlet del margen superior
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightConstraint.constant = 300
    }
}
