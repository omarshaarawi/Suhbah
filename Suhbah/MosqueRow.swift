//
//  MosqueRow.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI

import SwiftUI

struct MosqueRow: View {
    var mosque: Mosque

    var body: some View {
        VStack(alignment: .leading) {
            Text(mosque.name)
                .font(.headline)
            Text(mosque.address)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}
