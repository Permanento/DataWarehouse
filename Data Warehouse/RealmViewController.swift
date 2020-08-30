//
//  RealmViewController.swift
//  Data Warehouse
//
//  Created by Сергей Гринько on 29.08.2020.
//

import UIKit

class RealmViewController: UIViewController {
 
    var tableView = RealmTableView()
    var tasks: [Task]!
    override func viewDidLoad() {
        super.viewDidLoad()
        Persistance.shared.addTask(descr: "test task1")
        self.tasks = Persistance.shared.getTasks()
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // I tn a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension RealmViewController:UITableViewDataSource{
    
    func update() {
        tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskTableViewCell
        cell.taskLabel.text = self.tasks[indexPath.row].taskDescr
        cell.task = self.tasks[indexPath.row]
        
        return cell
        
    }
    
    
}
