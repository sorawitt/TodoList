//
//  ListRowView.swift
//  TodoList
//
//  Created by Sorawit Trutsat on 10/8/2565 BE.
//

import SwiftUI

struct ListRowView: View {
    let todo: TodoModel
    var body: some View {
        HStack {
            Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(todo.isCompleted ? Color.green : Color.red)
            Text(todo.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        let todoTrue: TodoModel = TodoModel(title: "Test", isCompleted: true)
        let todoFalse: TodoModel = TodoModel(title: "Test", isCompleted: false)
        Group {
            ListRowView(todo: todoTrue)
            ListRowView(todo: todoFalse)
        }
        .previewLayout(.sizeThatFits)
    }
}
