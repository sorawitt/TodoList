//
//  TodoListApp.swift
//  TodoList
//
//  Created by Sorawit Trutsat on 10/8/2565 BE.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View.
 
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
