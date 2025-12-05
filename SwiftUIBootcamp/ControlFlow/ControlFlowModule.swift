//
//  ControlFlowModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 05.12.2025.
//

import SwiftUI

struct ControlFlowModule: View {
    @State var showImage = true
    @State var didLike = false
    @State var likes = 500
    
    var body: some View {
        VStack {
            Button {
                didLike.toggle()
                
                if didLike {
                    likes += 1
                } else {
                    likes -= 1
                }
            } label: {
                Image(systemName: didLike ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(didLike ? .red : .black)
            }
            Text("\(likes) likes")
                .font(Font.title.bold())
        }
    }
}

#Preview {
    ControlFlowModule()
}
