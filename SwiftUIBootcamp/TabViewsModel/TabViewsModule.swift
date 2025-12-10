//
//  TabViewsModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 09.12.2025.
//

import SwiftUI

struct TabViewsModule: View {
    let foodImages = [
        "Steak",
        "Burgers",
        "sushi",
        "Toasts",
        "Pizza"
    ]
    
    var body: some View {
        TabView {
//            Text("Received")
//                .badge(3)
//                .tabItem {
//                    Label("Received", systemImage: "tray.and.arrow.down.fill")
//                }
//
            //           Text("Received")
            //  .tabItem {
            //      Label("Sent", systemImage: "tray.and.arrow.up.fill")
            //  }
            //
            // UberEatsMenu()
            //  .badge("!")
            //   .tabItem {
            //      Label("Account", systemImage: "person.crop.circle.fill")
            //  }
            
            ForEach(foodImages, id: \.self) { foodImage in
                Image(foodImage)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Rectangle())
            }
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabViewsModule()
}
