//
//  HorizontalCollectionView.swift
//  SpaceX
//
//  Created by anita on 29.08.2022.
//

import UIKit

class HorizontalCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
     init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
         delegate = self
         dataSource = self
         backgroundColor = .black
         register(UINib(nibName: "\(HorizontalCollectionViewCell.self)", bundle: .main), forCellWithReuseIdentifier: "\(HorizontalCollectionViewCell.self)")
         translatesAutoresizingMaskIntoConstraints = false
         layout.minimumLineSpacing = InsetConstants.galleryMinimumLineSpacing
         contentInset = UIEdgeInsets(top: 0, left: InsetConstants.leftDistanceToView, bottom: 0, right: InsetConstants.rightDistanceToView)
         showsHorizontalScrollIndicator = false
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: "\(HorizontalCollectionViewCell.self)", for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: InsetConstants.galleryItemWidth, height: InsetConstants.galleryItemWidth)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
