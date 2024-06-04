//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Jorge on 18/05/24.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .lightGray
        
        myFirstLabel.font = .boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
    }
}
