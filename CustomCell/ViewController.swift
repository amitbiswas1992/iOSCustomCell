//
//  ViewController.swift
//  CustomCell
//
//  Created by Maze Geek on 7/12/18.
//  Copyright © 2018 Amit Biswas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    let tableData = ["MB1200480 ","CH1000323","NI3431221","TO9012342","BM1200024"]
    
    let partData = ["MERCIDIES BENCE","HONDA","NISHAN","TOYOTA","BMW"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "UITableView"
        tableView.dataSource = self
        tableView.delegate = self
        
    // Register the cell to table
        let nibName = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "customTableViewCell")
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as! CustomTableViewCell
         cell.commonInit("got_\(indexPath.item)", title: tableData[indexPath.item], subTitle: partData[indexPath.item])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
}

