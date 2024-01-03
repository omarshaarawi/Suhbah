//
//  ListView2.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/13/23.
//

import SwiftUI

struct Mosque2: Identifiable {
    let id = UUID()
    let name: String
    let location: String
    let languages: [String]
    let imageName: String
}

struct MosquesListView2: View {
    @Binding var showMosquesList: Bool
    let mosques: [Mosque2]
    var body: some View {
            NavigationView{
                ScrollView {
                    VStack {
                        ForEach(mosques) { mosque in
                            NavigationLink(destination: MosqueDetailView(mosque: mosque)) {
                                VStack(alignment: .leading) {
                                    Image("majid")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 200)
                                        .clipped()
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text(mosque.name)
                                            .font(.headline)
                                        Text(mosque.location)
                                        Text("Languages: \(mosque.languages.joined(separator: ", "))")
                                    }
                                    .padding()
                                }
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .padding([.horizontal, .top])
                            }
                        }
                    }
                }
                
            }
        
        
            
        }
    

}
