//
//  MosqueDetailView.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/13/23.
//

import SwiftUI

struct MosqueDetailView: View {
    let mosque: Mosque2

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

     var btnBack : some View { Button(action: {
         self.presentationMode.wrappedValue.dismiss()
()
     }, label: {
         Image(systemName: "chevron.left")

     })
     }
     
    var body: some View {
            ScrollView {
                VStack {
                    Image("majid")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                        .clipped()
                        .overlay(
                            LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .center, endPoint: .bottom)
                        )
                    VStack(alignment: .leading, spacing: 20) {
                        Text(mosque.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top)
                        Text(mosque.location)
                            .font(.headline)
                            .foregroundColor(.white)
                        Text("Languages: \(mosque.languages.joined(separator: ", "))")
                            .font(.headline)
                            .foregroundColor(.white)
                        Group {
                            Text("Prayer Times")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.top)
                                .foregroundColor(.white)
                            // Replace with actual prayer times
                            Text("Fajr: 5:00 AM\nDhuhr: 1:00 PM\nAsr: 5:00 PM\nMaghrib: 8:00 PM\nIsha: 10:00 PM")
                                .foregroundColor(.white)
                        }
                        Group {
                            Text("Facilities")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.top)
                                .foregroundColor(.white)
                            // Replace with actual facilities
                            Text("Parking\nWheelchair Access\nWomen's Section")
                                .foregroundColor(.white)
                        }
                        Group {
                            Text("Contact Information")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.top)
                                .foregroundColor(.white)
                            // Replace with actual contact information
                            Text("Phone: (123) 456-7890\nEmail: info@mosque.com")
                                .foregroundColor(.white)
                        }
                        Group {
                            Text("Events")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.top)
                                .foregroundColor(.white)
                            // Replace with actual events
                            Text("Friday Prayer at 1:00 PM\nQuran Study on Sundays at 2:00 PM")
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(20)
                    .padding(.horizontal)
                }
            }
//            .edgesIgnoringSafeArea(.all)
//            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
             .navigationBarItems(leading: btnBack)
        }
}

struct MosqueDetailView_Previews: PreviewProvider {
    static var previews: some View {
        var m =         Mosque2(name: "test", location: "test", languages: ["test"], imageName: "test")

        MosqueDetailView(mosque: m)
    }
}
