//
//  Title+SettingsTableViewCell.swift
//  SpaceX
//
//  Created by anita on 30.08.2022.
//

import Foundation
import UIKit

class TitleAndSettingsTableViewCell: UITableViewCell  {
    
    static let identifier = "TitleAndSettingsTableViewCell"
    
    private let titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Falcon Heavy"
        label.font = .systemFont(ofSize: 24, weight: .regular)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let settingsButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setImage(UIImage(named: "Setting"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(settingsButton)
        configureView()
        contentView.clipsToBounds = true
    }
        
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        contentView.backgroundColor = .black
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            titleLabel.trailingAnchor.constraint(equalTo: settingsButton.leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            
            settingsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            settingsButton.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            settingsButton.widthAnchor.constraint(equalToConstant: 25),
            settingsButton.heightAnchor.constraint(equalToConstant: 25)
            
        ])
       
    }
}
