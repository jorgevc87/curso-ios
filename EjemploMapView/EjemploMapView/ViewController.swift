//
//  ViewController.swift
//  EjemploMapView
//
//  Created by Jorge on 16/05/24.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My View Controller"
        
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: -12.069533, longitude: -77.0383054)
        
    }

}

