//
//  ButtonsModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 05.12.2025.
//

import SwiftUI

struct ButtonsModule: View {
    
    @State var rectangleColor = Color.blue
    @State var title = "Hello"
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .cornerRadius(20)
                .foregroundColor(rectangleColor)
            
            Text(title)
                .font(.title)
            
            Button("Click me") {
                rectangleColor = .pink
                title = "Basic button"
            }
            .padding()
            
            Button {
                rectangleColor = .purple
                title = "Custom button"
            } label: {
                Text("Custom Button")
                    .font(.headline)
                    .frame(width: 150, height: 50)
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button {
                rectangleColor = .green
                title = "Image Button"
            } label: {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
                
            }


        }
    }
}

#Preview {
    ButtonsModule()
}
