//
//  ParametersTableViewCell.swift
//  SpaceX
//
//  Created by anita on 31.08.2022.
//

import UIKit

class ParametersTableViewCell: UITableViewCell {
    
    static let identifier = "ParametersTableViewCell"
    
    private let titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "First Launch"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let parameterLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "7 february 2018"
        label.textColor = .white
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .black
        contentView.addSubview(titleLabel)
        contentView.addSubview(parameterLabel)
        
        setLabelContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLabelContraints() {

        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            titleLabel.trailingAnchor.constraint(equalTo: parameterLabel.leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 8),
            
            parameterLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            parameterLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            parameterLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 8)
        
        ])
        
        titleLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    }

}
