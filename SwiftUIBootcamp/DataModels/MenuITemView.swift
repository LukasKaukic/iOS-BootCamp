//
//  MenuITemView.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 08.12.2025.
//

import SwiftUI

struct MenuITemView: View {
    let menuItem: MenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(menuItem.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 150)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(menuItem.restaurantName)
                    .fontWeight(.semibold)
                
                Text(menuItem.type)
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    MenuITemView(menuItem: MenuItem(imageName: "Pizza", type: "Margherita", restaurantName: "Pizza Palace"))
}
