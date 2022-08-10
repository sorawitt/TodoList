//
//  AddTodoView.swift
//  TodoList
//
//  Created by Sorawit Trutsat on 10/8/2565 BE.
//

import SwiftUI

struct AddTodoView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.8374180198,
                                                    green: 0.8374378085,
                                                    blue: 0.8374271393, alpha: 1)))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an item ✍️")
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTodoView()
        }
    }
}
