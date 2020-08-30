//
//  RealmTableView.swift
//  Data Warehouse
//
//  Created by Сергей Гринько on 30.08.2020.
//

import UIKit

class RealmTableView: UITableView {
    
  
    
    
    static let shared = RealmTableView()
    public func relod() {
        self.reloadData()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
