//
//  ViewExtractionModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 05.12.2025.
//

import SwiftUI

struct ViewExtractionModule: View {
    var body: some View {
        ScrollView {
            DriverRowView(driverName: "Lewis Hamilton", imageName: "Alpine", teamName: "Alpine")
            DriverRowView(driverName: "Checo Perez", imageName: "Redbull", teamName: "Redbull")
            DriverRowView(driverName: "Riciardo", imageName: "Renault", teamName: "Renault")
        }
        .padding()
    }
}

struct DriverRowView: View {
    let driverName: String
    let imageName: String
    let teamName: String
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
                .shadow(radius: 3)
            
            VStack(alignment: .leading) {
                Text(driverName)
             
                Text(teamName)
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
            
            Spacer()
        }
    }
}

#Preview {
    ViewExtractionModule()
}
