//
//  MainView.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI
import BottomSheet


struct MainView: View {
    @State private var showSheet = true
    @State var bottomSheetPosition: BottomSheetPosition = .relative(0.4)


    var body: some View {
        Header().zIndex(1)
        ZStack {

            MosqueMapView()
                   
        }
        .bottomSheet(bottomSheetPosition: $bottomSheetPosition, switchablePositions: [                       .relativeBottom(0.125),
                                                                                                             .relative(0.4),
                                                                                                             .relativeTop(1.999)
]) {
            Text("")
        }
        
        Menu()



    }
}
