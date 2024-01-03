//
//  HeaderView.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI

struct SafeAreaInsetsViewModifier: ViewModifier {
    @State private var safeAreaInsets = EdgeInsets()

    func body(content: Content) -> some View {
        content
            .padding(safeAreaInsets)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                DispatchQueue.main.async {
                    let window = UIApplication.shared.windows.first { $0.isKeyWindow }
                    safeAreaInsets = window?.safeAreaInsets.asEdgeInsets() ?? EdgeInsets()
                }
            }
    }
}

extension UIEdgeInsets {
    func asEdgeInsets() -> EdgeInsets {
        EdgeInsets(top: top, leading: left, bottom: bottom, trailing: right)
    }
}

struct HeaderView: View {
    @Binding var searchText: String

    var body: some View {
        GeometryReader { geometry in
            let safeAreaInsets = geometry.safeAreaInsets
            let minHeight: CGFloat = 60
            let maxHeight: CGFloat = 600

            VStack {
                VStack(spacing: 16) {
                    CustomSearchBar(searchText: $searchText)
                        .padding(.top, 16)

                    Text("Go\nNear")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(-16)

                    Button(action: {
                        // Handle button action here
                    }) {
                        Text("Explore nearby stays")
                            .fontWeight(.semibold)
                            .foregroundColor(.primary)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(6)
                    }
                }
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity)
                .frame(height: maxHeight - safeAreaInsets.top)
                .background(
                    Image("background")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                )
                .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                Spacer()
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
            .frame(height: minHeight + maxHeight - safeAreaInsets.top)
        }
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
