//
//  TaskView.swift
//  30Projects
//
//  Created by Eymen on 13.08.2023.
//

import SwiftUI

struct TaskView: View {
    @StateObject private var taskManager = TaskManager()
    @State private var newTaskTitle = ""

    var body: some View {
        VStack(spacing: 20) {
            List {
                ForEach(taskManager.tasks) { task in
                    TaskRow(task: task, toggleCompletion: {
                        taskManager.toggleTaskCompletion(task)
                    })
                }
                .onDelete(perform: delete)
            }
            .listStyle(.automatic)
            .navigationTitle("Task Manager")

            HStack {
                TextField("New Task", text: $newTaskTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: addTask) {
                    Text("Add")
                        .foregroundColor(.white)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 10)
                        .background(.ultraThinMaterial)
                        .cornerRadius(5)
                }
            }.padding(.horizontal)
        }
    }

    private func addTask() {
        if !newTaskTitle.isEmpty {
            taskManager.addTask(Task(title: newTaskTitle))
            newTaskTitle = ""
        }
    }

    private func delete(at offsets: IndexSet) {
        taskManager.tasks.remove(atOffsets: offsets)
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
