//
//  SlideOverCardModifier.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI

struct SlideOverCard<Content: View>: View {
    let content: Content
    @Binding var isOpen: Bool

    init(isOpen: Binding<Bool>, @ViewBuilder content: () -> Content) {
        self.content = content()
        self._isOpen = isOpen
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.1))
                        .frame(width: 40, height: 5)
                        .padding(.top)
                    
                    content
                        .padding()
                }
                .background(Color(.systemBackground))
                .cornerRadius(10)
                .offset(y: isOpen ? 0 : geometry.size.height - 60)
                .animation(.spring(), value: isOpen)
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}
