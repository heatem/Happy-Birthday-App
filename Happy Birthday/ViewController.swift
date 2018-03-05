//
//  ViewController.swift
//  Happy Birthday
//
//  Created by Heather Mason on 3/3/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.blue
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
            cell.backgroundColor = UIColor.white.withAlphaComponent(0.3)
//            cell.backgroundColor = UIColor.blue.withAlphaComponent(0.3)
        } else {
            cell.backgroundColor = UIColor.blue.withAlphaComponent(0.2)
        }
        
        return cell
    }
    
    
}
