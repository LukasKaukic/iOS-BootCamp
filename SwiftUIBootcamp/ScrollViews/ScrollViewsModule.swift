//
//  ScrollViewsModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 04.12.2025.
//

import SwiftUI

struct ScrollViewsModule: View {
    
    let stableImages = [
        "Alpine",
        "Astonmartin",
        "Ferrari",
        "Haas",
        "Mclaren",
        "Redbull",
        "Renault"
    ]
    
    let foodImages = [
        "Steak",
        "Burgers",
        "sushi",
        "Toasts",
        "Pizza"
        
    ]
    var body: some View {
      /*   ScrollView(.horizontal) {
            HStack {
                ForEach(stableImages, id: \.self) { stableImage in
                    Image(stableImage)
                        .resizable()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                        .shadow(radius: 3)
                }
            }

     }
       */
        
        ScrollView(showsIndicators: false) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            VStack(spacing: 24) {
                ForEach(foodImages, id: \.self) { foodImage in
                    VStack(alignment: .leading) {
                        Image(foodImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 360, height: 150)
                            .cornerRadius(10)
                        
                        VStack(alignment: .leading) {
                                Text("Shoto")
                                .fontWeight(.semibold)
            
                                Text("0.99 Delivery Fee :  20 - 30 min")
                                .foregroundColor(.gray)
                        }
                        .font(.subheadline)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewsModule()
}
