//
//  Menu.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/13/23.
//

import SwiftUI
struct Menu: View {
    @State private var showingBottomSheet = true

    var body: some View {

            Header()

            TabView {
                Group {
                    ScrollView { }
                        .tabItem {
                            Image(systemName: "person.3.fill")
                            Text("Events")
                        }
                    
                    MosqueMapView()
                        .tabItem {
                            Image(systemName: "magnifyingglass.circle")
                            Text("Directory")
                        }                
                }
                
            }
        
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
