//
//  ViewController.swift
//  CollectionViews
//
//  Created by Jorge on 17/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let myCountries = ["España","Mexico","Peru","Argentina", "Chile", "Ecuador", "Colombia"]
    
    //UIScreen.main.bounds.width repreenta el ancho total de la pantalla
    private let myCellWidth = UIScreen.main.bounds.width / 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collectionView.backgroundColor = .red
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }
}

// MARK: UICollectionViewDataSource
extension ViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        
        //cell.backgroundColor = .lightGray
        cell?.myFirstLabel.text = myCountries[indexPath.row]
        
        return cell!
    }
}

// MARK: UICollectionViewDelegate
extension ViewController : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Seccion: \(indexPath.section) - Row: \(indexPath.row) - \(myCountries[indexPath.row])")
    }
}

// MARK:
extension ViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItem indexPath: IndexPath) -> CGSize {
        
        //Retornamos una celda cuadrada, en base al ancho de la pantalla
        return CGSize(width: myCellWidth, height: myCellWidth)
    }
}



