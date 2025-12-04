//
//  PaddingModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 04.12.2025.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
        VStack {
            Text("Hello, world! How are you doing today?")
        }
        .background(.blue)
        .padding()
        .background(.gray)
        .padding()
        .background(.red)
        .padding()
    }
}

#Preview {
    PaddingModule()
}
