//
//  ImageTableViewCell.swift
//  SpaceX
//
//  Created by anita on 30.08.2022.
//

import Foundation
import UIKit


class ImageTableViewCell: UITableViewCell {
    
    static let identifier = "ImageTableViewCell"
    
   private let rocketImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "BackgroundPic")
        imageView.contentMode = .top
        imageView.clipsToBounds = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let blackRoundView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .black
        view.layer.cornerRadius = 30
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(rocketImageView)
        contentView.addSubview(blackRoundView)
        configureView()
        contentView.clipsToBounds = true
    }
        
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configureView() {
        
        NSLayoutConstraint.activate([
            
            rocketImageView.heightAnchor.constraint(equalToConstant: 250),
            rocketImageView.rightAnchor.constraint(equalTo: rightAnchor),
            rocketImageView.leftAnchor.constraint(equalTo: leftAnchor),
            rocketImageView.topAnchor.constraint(equalTo: topAnchor),
            
            blackRoundView.heightAnchor.constraint(equalToConstant: 50),
            blackRoundView.rightAnchor.constraint(equalTo: rightAnchor),
            blackRoundView.leftAnchor.constraint(equalTo: leftAnchor),
            blackRoundView.topAnchor.constraint(equalTo: rocketImageView.bottomAnchor, constant: -5)
            ])
        
    }
    
    
}
