//
//  DataCenter.swift
//  Clubadmin
//
//  Created by cadenzah on 18/04/2019.
//  Copyright © 2019 cadenzah. All rights reserved.
//

import Foundation

struct Task {
    let taskID: Int
    var taskName: String?
    var taskOwner: [String] = []
    var taskDesc: String?
    static var count: Int = 0
    
    init(name taskName: String, owner taskOwner: String) {
        self.taskID = Task.count
        self.taskName = taskName
        self.taskOwner += [taskOwner]
        self.taskDesc = nil
        Task.count += 1
    }
    init(owner taskOwner: String) {
        self.init(name: "New Task",owner: taskOwner)
    }
    
    mutating func editDesc (by newDesc: String) -> Void {
        
    }
}

var task1:Task = Task(name: "밥 먹기", owner: "김정모")
var task2:Task = Task(name: "라즈베리파이3 세팅", owner: "김정모")
var task3:Task = Task(name: "운동하기", owner: "김정모")
var task4:Task = Task(name: "제본 맡긴 책 찾으러 가기", owner: "김정모")
var task5:Task = Task(owner: "김정모")
var task6:Task = Task(name: "동아리 회의 참석", owner: "김정모")
var task7:Task = Task(name: "스터디 준비", owner: "김정모")
var task8:Task = Task(name: "여자친구 만나기", owner: "김정모")
var task9:Task = Task(name: "일일퀘스트 완료하기", owner: "김정모")
var task10:Task = Task(name: "Swift 문법 공부", owner: "김정모")
