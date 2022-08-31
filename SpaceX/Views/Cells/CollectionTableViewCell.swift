//
//  CollectionTableViewCell.swift
//  SpaceX
//
//  Created by anita on 31.08.2022.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
  
    static let identifier = "CollectionTableViewCell"
    private let horizontalCollectionView = HorizontalCollectionView()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCollectionView(){
        contentView.backgroundColor = .black
        contentView.addSubview(horizontalCollectionView)
        horizontalCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            horizontalCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            horizontalCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            horizontalCollectionView.topAnchor.constraint(equalTo: topAnchor),
            horizontalCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10)        
        ])
    }

}
