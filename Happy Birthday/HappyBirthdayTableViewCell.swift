//
//  HappyBirthdayTableViewCell.swift
//  Happy Birthday
//
//  Created by Heather Mason on 3/4/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit

class HappyBirthdayTableViewCell: UITableViewCell {
    
    let labelContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 10
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowOpacity = 0.3
        view.layer.shadowRadius = 6
        return view
    }()
    
    let phraseLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    let languageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12.0)
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        addSubview(labelContainer)
        labelContainer.addSubview(phraseLabel)
        labelContainer.addSubview(languageLabel)
        
        installConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func installConstraints() {
        labelContainer.translatesAutoresizingMaskIntoConstraints = false
        labelContainer.topAnchor.constraint(equalTo: topAnchor, constant: 14).isActive = true
        labelContainer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14).isActive = true
        labelContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        labelContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        phraseLabel.translatesAutoresizingMaskIntoConstraints = false
        phraseLabel.topAnchor.constraint(equalTo: labelContainer.topAnchor, constant: 10).isActive = true
        phraseLabel.leadingAnchor.constraint(equalTo: labelContainer.leadingAnchor, constant: 10).isActive = true
        phraseLabel.trailingAnchor.constraint(equalTo: labelContainer.trailingAnchor, constant: -10).isActive = true
        
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        languageLabel.topAnchor.constraint(equalTo: phraseLabel.bottomAnchor, constant: 4).isActive = true
        languageLabel.leadingAnchor.constraint(equalTo: labelContainer.leadingAnchor, constant: 10).isActive = true
        languageLabel.trailingAnchor.constraint(equalTo: labelContainer.trailingAnchor, constant: -10).isActive = true
        languageLabel.bottomAnchor.constraint(equalTo: labelContainer.bottomAnchor, constant: -10).isActive = true
    }

}








