//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Jorge on 15/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
}

