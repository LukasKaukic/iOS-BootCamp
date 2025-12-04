//
//  ImagesModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 04.12.2025.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
        //Image(systemName: "heart")
            //.resizable()
            //.foregroundColor(.pink)
            //.frame(width: 200, height: 200)
           // .font(.largeTitle)
           // .imageScale(.small)
        
        Image("Alpine")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
    }
}

#Preview {
    ImagesModule()
}
