//
//  ListRowView.swift
//  TodoList
//
//  Created by Sorawit Trutsat on 10/8/2565 BE.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is title")
    }
}
