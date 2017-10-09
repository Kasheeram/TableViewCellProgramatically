//
//  TableViewController.swift
//  TableViewCellProgramatically
//
//  Created by Apogee on 10/9/17.
//  Copyright © 2017 Apogee. All rights reserved.
//

import UIKit

class TableViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    var userNameArr = ["UserName 1","UserName 2","UserName 3","UserName 4","UserName 5",]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        tableView.register(CellTableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //tableView.rowHeight = UITableViewAutomaticDimension
        return 85
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userNameArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellTableViewCell
        cell.UserName.text = userNameArr[indexPath.row]
        cell.Message.text = "\(indexPath.row)"
        cell.myButton1.addTarget(self, action: #selector(TableViewController.pressedBrowser(_:)), for: UIControlEvents.touchUpInside)
        cell.myButton2.addTarget(self, action: #selector(TableViewController.pressedTelephone(_:)), for: UIControlEvents.touchUpInside)
        return cell
    }
    
   @objc  func pressedBrowser(_ sender: UIButton) {
        
        print("pressedBrowser")
        
    }
    
    @objc func pressedTelephone(_ sender: UIButton) {
        
        print("pressedTelephone")
    }
    
}
