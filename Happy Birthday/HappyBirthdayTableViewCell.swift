//
//  HappyBirthdayTableViewCell.swift
//  Happy Birthday
//
//  Created by Heather Mason on 3/4/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit

class HappyBirthdayTableViewCell: UITableViewCell {
    
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
        label.textColor = UIColor.white
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        addSubview(phraseLabel)
        addSubview(languageLabel)
        
        installConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func installConstraints() {
        phraseLabel.translatesAutoresizingMaskIntoConstraints = false
        phraseLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        phraseLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        phraseLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        languageLabel.topAnchor.constraint(equalTo: phraseLabel.bottomAnchor, constant: 4).isActive = true
        languageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        languageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        languageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        
    }

}








