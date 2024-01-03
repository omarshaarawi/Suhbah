//
//  Header.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI

struct Header: View {
    @State private var searchText = ""

    var body: some View {
        VStack(spacing: 25){
            
        }
        .padding(.horizontal)
        VStack(spacing: 20) {
            SearchBar(text: $searchText)
            HStack {
                Spacer()
            }
        }
        .padding(.horizontal)

    }
}
