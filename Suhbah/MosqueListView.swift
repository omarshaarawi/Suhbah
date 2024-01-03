//
//  MosqueListView.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI
import CoreLocation

struct MosqueListView: View {
    @State private var searchText = ""
    @State private var showFilter = false
    @Binding var showMosquesList: Bool

    var body: some View {
        ScrollView {
            
                ForEach(sampleMosques) { mosque in
                    MosqueRow(mosque: mosque)
                        .padding()
                }
            
                
            
        }
    }

    private var searchBar: some View {
        HStack {
            TextField("Search mosques...", text: $searchText)
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
        }
    }

    private var filterButton: some View {
        Button(action: {
            showFilter.toggle()
        }) {
            Image(systemName: "line.horizontal.3.decrease.circle")
                .imageScale(.large)
                .padding()
        }
    }
}
