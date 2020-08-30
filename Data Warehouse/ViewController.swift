//
//  ViewController.swift
//  Data Warehouse
//
//  Created by Сергей Гринько on 28.08.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        lastNameTextField.text = Persistance.shared.userLastName
        nameTextField.text = Persistance.shared.userName
        print(Persistance.shared.userName)
        print(Persistance.shared.userLastName)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func nameTextField(_ sender: Any) {
        Persistance.shared.userName = nameTextField.text ?? ""
    }
    
    @IBAction func lastNameTextField(_ sender: Any) {
        Persistance.shared.userLastName = lastNameTextField.text ?? ""
    }
    
    

}

