//
//  UIButtonExtension.swift
//  iOS-Calculator
//
//  Created by Jorge on 23/05/24.
//

import UIKit

extension UIButton {
    
    //Redondear Boton
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    //Brilla
    func shine() {
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }) { (completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 1
            })
        }
    }
    
}
