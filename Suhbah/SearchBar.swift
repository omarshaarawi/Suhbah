//
//  SearchBar.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .padding(.leading, 8)
            
            TextField("Search", text: $text)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 8))
                .disableAutocorrection(true)
            
            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                        .padding(.trailing, 8)
                }
            }
        }
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .padding(.horizontal)
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}
