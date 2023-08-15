//
//  TaskRow.swift
//  30Projects
//
//  MARK: codelab21 follow me on Instagram and YouTube
//

import SwiftUI

struct TaskRow: View {
    let task: Task
    let toggleCompletion: () -> Void

    var body: some View {
        Button(action: toggleCompletion) {
            HStack {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(task.isCompleted ? .green : .gray)
                Text(task.title)
                    .font(.headline)
                    .strikethrough(task.isCompleted, color: .gray)
                    .foregroundColor(task.isCompleted ? .gray : .white)
            }

        }
    }
}
