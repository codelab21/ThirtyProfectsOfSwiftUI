//
//  TaskRow.swift
//  30Projects
//
//  Created by Eymen on 13.08.2023.
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
