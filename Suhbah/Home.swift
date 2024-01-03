//
//  Home.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/9/23.
//

import SwiftUI
import MapKit

struct Home: View {
    @State var showAnotherSheet: Bool = false
    var body: some View {
        ZStack {
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.889687, longitude: -93.349953), latitudinalMeters: 10000, longitudinalMeters: 10000)
            Map(coordinateRegion: .constant(region))
                .ignoresSafeArea()
                .overlay(alignment: .topTrailing, content: {
                Button {
                    showAnotherSheet = true

                } label: {
                    Image(systemName: "gearshape.fill")
                        .font(.title2)
                }
                    .padding()
            })
                .bottomSheet(presentationDetents:
                    [.medium, .large, .height(70)], isPresented:
                    .constant(true), sheetCornerRadius: 20) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        TextField("search maps", text:
                                .constant(""))
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.ultraThickMaterial)
                        }

                        MosqueList()
                    }

                        .padding()
                        .padding(.top)
                }
            } onDismiss: { }

                .sheet(isPresented: $showAnotherSheet) {
                Text("Hi Settings")
            }

        }
    }
}

@ViewBuilder
func MosqueList() -> some View {
    VStack(spacing: 20) {
        ForEach(sampleMosques) { mosque in
            HStack(spacing: 12) {
                Text("#\(getIndex(mosque: mosque) + 1)")
                    .fontWeight(.semibold)

                Text(mosque.name)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)


                VStack(alignment: .leading, spacing: 10) {
                    Label {
                        Text(mosque.address)
                    } icon: {
                        Image(systemName: "beats.headphones")
                    }.font(.caption)
                }
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

func getIndex(mosque: Mosque) -> Int {
    return sampleMosques.firstIndex { m in
        m.id == mosque.id
    } ?? 0
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
