//
//  ViewController.swift
//  Happy Birthday
//
//  Created by Heather Mason on 3/3/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    var tableView: UITableView!
    let messageComposer = MessageComposer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: .plain)
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.hbLightBlue
        tableView.delaysContentTouches = false
        tableView.register(HappyBirthdayTableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HappyBirthdayTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HappyBirthdayTableViewCell
        
        cell.phraseLabel.text = items[indexPath.row].phrase
        cell.languageLabel.text = items[indexPath.row].language
        cell.backgroundColor = UIColor.hbLightBlue

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let birthdayPhrase = items[indexPath.row].phrase

        
        if messageComposer.canSendText() {
            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
            messageComposeVC.body = birthdayPhrase
            present(messageComposeVC, animated: true, completion: nil)
        } else {
            print(String(describing: birthdayPhrase))
            print("unable to send text messages")
        }
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        // Set the appearance for a highlighted cell
        let highlightedCell = tableView.cellForRow(at: indexPath) as! HappyBirthdayTableViewCell

        highlightedCell.labelContainer.layer.shadowRadius = 2
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        // Set the appearance for a cell that is no longer highlighted

        let highlightedCell = tableView.cellForRow(at: indexPath) as! HappyBirthdayTableViewCell

        highlightedCell.labelContainer.layer.shadowRadius = 6
    }
}
