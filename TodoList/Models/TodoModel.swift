//
//  TodoModel.swift
//  TodoList
//
//  Created by Sorawit Trutsat on 11/8/2565 BE.
//

import Foundation

struct TodoModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
