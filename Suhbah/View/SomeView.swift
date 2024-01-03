//
//  SomeViewq.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/13/23.
//

import SwiftUI


struct SomeView: View {
    @State private var showSheet = true
    
    var body: some View {
        ZStack {

            
            TabView {
                Text("Tab 1")
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("Tab 1")
                    }
                
                Text("Tab 2")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Tab 2")
                    }
            }
     
            
        }
    }
}


struct SomeViewq_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}
