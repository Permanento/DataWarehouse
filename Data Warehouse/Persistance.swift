//
//  Persistance.swift
//  Data Warehouse
//
//  Created by Сергей Гринько on 29.08.2020.
//

import Foundation
import RealmSwift

class Persistance{
    static let shared = Persistance()
    
    private let kUserNameKey = "Persistance.kUserNameKey"
    private let kUserLastNameKey = "Persistance.kUserLastNameKey"
    
    var userName: String{
        set { UserDefaults.standard.set(newValue, forKey: kUserNameKey) }
        get { return UserDefaults.standard.string(forKey: kUserNameKey) ?? "" }
    }
    
    var userLastName: String{
        set { UserDefaults.standard.set(newValue, forKey: kUserLastNameKey) }
        get { return UserDefaults.standard.string(forKey: kUserLastNameKey) ?? "" }
    }
    
    
    private let realm = try! Realm()
    
    
    
    func addTask(descr:String) {
        let task = Task()
        task.taskDescr = descr
        try! realm.write {
            self.realm.add(task)
        }
        
        
    }
    
    
    func getTasks() -> [Task]{
        let allTasks = Array(realm.objects(Task.self))
        return allTasks
    }
    
    func deleteTask(task:Task){
        try! realm.write{
            self.realm.delete(task)
        }
        print("Deleted!")
        RealmTableView.shared.relod()
    }
    
    
}
