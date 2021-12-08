//
//  ViewController.swift
//  BeastList
//
//  Created by Linah abdulaziz on 04/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    var tasks = [String]()
    @IBOutlet weak var taskTextview: UITextField!
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
    }

    @IBAction func preasedBeastButton(_ sender: UIButton) {
        tasks.append(taskTextview.text!)
        tableview.reloadData()
        taskTextview.text = ""
    }
    
   
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "my cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
    }
    
    
    
}


