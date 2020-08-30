//
//  TaskList.swift
//  Data Warehouse
//
//  Created by Сергей Гринько on 29.08.2020.
//

import Foundation
import RealmSwift

class TaskList:Object {
    let tasks = List<Task>()
}
