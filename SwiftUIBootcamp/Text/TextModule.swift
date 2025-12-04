//
//  TextModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 04.12.2025.
//

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("Lets enjo!! This is the best bootcamp in the world!!,,Lets enjo!! This is the best bootcamp in the world!!")
            .font(.subheadline) // View modifier
            .foregroundColor(.blue)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .italic()
            .underline()
    }
}

#Preview {
    TextModule()
}
