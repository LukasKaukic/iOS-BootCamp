//
//  GridsModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 04.12.2025.
//

import SwiftUI

struct GridsModule: View {
    
    let columns: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    let stables = [
        "Alpine",
        "Astonmartin",
        "Ferrari",
        "Haas",
        "Mclaren",
        "Redbull",
        "Renault"
    ]
    
    let dimension = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(stables, id: \.self) { stable in
                    Image(stable)
                        .resizable()
                        .scaledToFill()
                        .frame(width: dimension, height: dimension)
                        .clipShape(Rectangle())
                    
                }
            }
        }
        .background(.gray)
    }
}

#Preview {
    GridsModule()
}
