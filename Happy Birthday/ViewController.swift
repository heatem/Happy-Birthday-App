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

        // Do any additional setup after loading the view.
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.hbBlue
        tableView.register(HappyBirthdayTableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // This function needs to return an Int specifying how many rows to show
        return happyBirthdayList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HappyBirthdayTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HappyBirthdayTableViewCell
        
        cell.phraseLabel.text = happyBirthdayList[indexPath.row]["phrase"]
        cell.languageLabel.text = happyBirthdayList[indexPath.row]["language"]
        
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.black.cgColor
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.blue.withAlphaComponent(0.2)
        } else {
            cell.backgroundColor = UIColor.hbBlue
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let birthdayPhrase = happyBirthdayList[indexPath.row]["phrase"]
        
        if messageComposer.canSendText() {
            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
            messageComposeVC.body = birthdayPhrase
            present(messageComposeVC, animated: true, completion: nil)
        } else {
            print("unable to send text messages")
        }
        
//        let selectedCell = tableView.cellForRow(at: indexPath) as! HappyBirthdayTableViewCell
//        selectedCell.backgroundColor = UIColor.blue
//        tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        
        
    }
    
}
