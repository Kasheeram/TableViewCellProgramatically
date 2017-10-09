//
//  ViewController.swift
//  TableViewCellProgramatically
//
//  Created by Apogee on 10/9/17.
//  Copyright © 2017 Apogee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func moveToSecondVC(_ sender: Any) {
        let vc = TableViewController()
//        let storyBoard = UIStoryboard(name:"Main",bundle:nil)
//        let vcOBJ = storyBoard.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        present(vc, animated: true, completion: nil)
    }
    
}

