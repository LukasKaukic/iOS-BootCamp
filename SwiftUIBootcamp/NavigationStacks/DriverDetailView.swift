//
//  DriverDetailView.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 09.12.2025.
//

import SwiftUI

struct DriverDetailView: View {
    let driver: String
    
    var body: some View {
        VStack{
            NavigationLink {
                Text("Third screen")
            } label: {
                Text(driver)
            }
        }
        .navigationTitle(driver)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DriverDetailView(driver: "Senna")
}
