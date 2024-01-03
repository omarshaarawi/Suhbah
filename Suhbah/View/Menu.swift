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
             
                    
           
                    
                    Text("")
                        .tabItem {
                            Image(systemName: "bell.circle")
                            Text("Notifications")
                        }
                    Text("")
                        .tabItem {
                            Image(systemName: "person.crop.circle.fill")
                            Text("Account")
                        }
                }
                
//                .background(
//                    Color.gray.offset(y: showingBottomSheet ? 0 : UIScreen.main.bounds.size.height - 120)
//                )
            }
        
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
