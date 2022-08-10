//
//  ListView.swift
//  TodoList
//
//  Created by Sorawit Trutsat on 10/8/2565 BE.
//

import SwiftUI

struct ListView: View {
    @State private var items: [String] = [
        "This is the first title!",
        "This is the second!",
        "Third!"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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
