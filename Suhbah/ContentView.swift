//
//  ContentView.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isSheetPresented = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, SwiftUI!")
                
                Button(action: {
                    isSheetPresented.toggle()
                }) {
                    Text("Open Sheet with Tab View")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Main View")
            .sheet(isPresented: $isSheetPresented, content: {
                SheetWithTabView()
            })
        }
    }
}

struct SheetWithTabView: View {
    var body: some View {
        TabView {
            Text("Tab 1 Content")
                .tabItem {
                    Label("Tab 1", systemImage: "1.circle")
                }

            Text("Tab 2 Content")
                .tabItem {
                    Label("Tab 2", systemImage: "2.circle")
                }
        }
    }
}

