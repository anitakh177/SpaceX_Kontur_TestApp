//
//  HorizontalCollectionViewCell.swift
//  SpaceX
//
//  Created by anita on 29.08.2022.
//

import UIKit

class HorizontalCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Views
    
    @IBOutlet private weak var heightNumberLabel: UILabel!
    @IBOutlet private weak var heightLabel: UILabel!
    
    // MARK: - UICollectionViewCell
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 32
    }
    

}
