//
//  ShapesModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 04.12.2025.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
        VStack() {
            Circle()
                .fill(.blue)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 100)
                .cornerRadius(10)
            
            Capsule()
                .fill(.blue)
                .frame(width: 200, height: 64)
        }
    }
}

#Preview {
    ShapesModule()
}

