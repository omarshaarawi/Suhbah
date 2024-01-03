//
//  MosqueMapView.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.

import SwiftUI
import MapKit

struct MosqueMapView: View {
    @State private var showMosquesList = true
    
    var sample: [Mosque2] =
    [
        Mosque2(name: "test", location: "test", languages: ["test"], imageName: "test"),
        Mosque2(name: "test", location: "test", languages: ["test"], imageName: "test"),
        Mosque2(name: "test", location: "test", languages: ["test"], imageName: "test"),
        Mosque2(name: "test", location: "test", languages: ["test"], imageName: "test"),
        Mosque2(name: "test", location: "test", languages: ["test"], imageName: "test"),
    ]


    var body: some View {
        ZStack {
            if showMosquesList {
                MosquesListView2(showMosquesList: $showMosquesList, mosques: sample)
                    .transition(.slide)
                
                
            } else {
                MosqueMapView2(showMosquesList: $showMosquesList)
                    .transition(.slide)
                
            }
            VStack {
                   Spacer()
                   HStack {
                       Spacer()
                       Button(action: {
                           withAnimation {
                               self.showMosquesList.toggle()
                           }
                       }) {
                           if(showMosquesList) {
                               HStack {
                                   Text("List")
                                       .foregroundColor(.white)
                                   Image(systemName: "list.bullet")
                                       .foregroundColor(.white)
                               }
                                   .padding(10)
                                   .background(Color.black)
                                   .clipShape(Capsule())
                                   .shadow(radius: 10)
                           }
                           else {
                               HStack {
                                   Text("Map")
                                       .foregroundColor(.white)
                                   Image(systemName: "map.fill")
                                       .foregroundColor(.white)
                               }
                                   .padding(10)
                                   .background(Color.black)
                                   .clipShape(Capsule())
                                   .shadow(radius: 10)
                           }

                       }

                           .controlSize(.mini)
                           .padding(.bottom, 50)
                       Spacer()
                   }
               }
        }
    }
}
enum ViewState {
    case foo
    case bar
}


struct MosqueMapView2: View {
    @State private var region: MKCoordinateRegion
    @Binding var showMosquesList: Bool
    @State private var viewState: ViewState = .foo

    init(showMosquesList: Binding<Bool>) {
        let center = sampleMosques.first?.coordinate ?? CLLocationCoordinate2D()
        _region = State(initialValue: MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)))
        _showMosquesList = showMosquesList
    }

    var body: some View {
        
        ZStack {
            Map(coordinateRegion: $region, annotationItems: sampleMosques) { mosque in
                MapAnnotation(coordinate: mosque.coordinate) {
                    NavigationLink(destination: Text(mosque.name)) {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.red)
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}
