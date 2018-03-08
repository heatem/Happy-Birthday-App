//
//  HappyBirthdayTableViewCell.swift
//  Happy Birthday
//
//  Created by Heather Mason on 3/4/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit

class HappyBirthdayTableViewCell: UITableViewCell {

//    let messageComposer = MessageComposer()
    
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
    
//    let sendWishButton: UIButton = {
//        let button = UIButton()
//        button.clipsToBounds = true
//        button.backgroundColor = UIColor.white
//        button.layer.cornerRadius = 5
//        button.setImage(#imageLiteral(resourceName: "BalloonChatIcon_120_Gradient"), for: .normal)
////        button.addTarget(self, action: #selector(sendWish), for: .touchUpInside)
//        return button
//    }()
//
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        addSubview(phraseLabel)
        addSubview(languageLabel)
//        addSubview(sendWishButton)
        
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
        
//        sendWishButton.translatesAutoresizingMaskIntoConstraints = false
//        sendWishButton.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
//        sendWishButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
//        sendWishButton.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -48).isActive = true
//        sendWishButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
//    @objc func sendWish() {
//        let birthdayPhrase = phraseLabel.text
//        let messageComposer = MessageComposer()
//        let vc = ViewController()
//        if messageComposer.canSendText() {
//            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
//            messageComposeVC.body = birthdayPhrase
////            presentViewController(messageComposeVC, animated: true, completion: nil)
//            vc.present(messageComposeVC, animated: true, completion: nil)
//        } else {
//            print(String(describing: birthdayPhrase))
//            print("unable to send text messages")
//        }
//    }
}








