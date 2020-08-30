//
//  TaskTableViewCell.swift
//  Data Warehouse
//
//  Created by Сергей Гринько on 29.08.2020.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var taskLabel: UILabel!
    var task: Task!
    let controller = RealmViewController()
    
    @IBAction func doneButton(_ sender: Any) {
        Persistance.shared.deleteTask(task: task)
        controller.update()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
      

        // Configure the view for the selected state
    }

}
