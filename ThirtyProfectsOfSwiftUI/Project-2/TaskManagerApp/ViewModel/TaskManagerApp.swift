//
//  Task.swift
//  30Projects
//
//  MARK: codelab21 follow me on Instagram and YouTube

import Foundation
import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}

class TaskManager: ObservableObject {
    @Published var tasks: [Task] = []

    func addTask(_ task: Task) {
        tasks.append(task)
    }

    func toggleTaskCompletion(_ task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
}
