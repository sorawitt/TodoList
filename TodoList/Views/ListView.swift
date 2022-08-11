//
//  ListView.swift
//  TodoList
//
//  Created by Sorawit Trutsat on 10/8/2565 BE.
//

import SwiftUI

struct ListView: View {
    @State private var todoList: [TodoModel] = [
        TodoModel(title: "1st Todo model", isCompleted: false),
        TodoModel(title: "2nd Todo model", isCompleted: true),
        TodoModel(title: "3rd Todo model", isCompleted: false)
    ]
    var body: some View {
        List {
            ForEach(todoList) { todo in
                ListRowView(todo: todo)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddTodoView())
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
