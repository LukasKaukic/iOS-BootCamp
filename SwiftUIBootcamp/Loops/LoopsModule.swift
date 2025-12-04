//
//  LoopsModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 04.12.2025.
//

import SwiftUI

struct LoopsModule: View {
    
    let stables: [String] = [
        "Haas",
        "Ferrari",
        "Alpine",
        "Aston Martin",
        "Red Bull",
        "Renault",
        "McLaren"
    ]
    var body: some View {
        VStack(spacing: 32) {
            ForEach(stables, id: \.self) { stable in
                HStack {
                    
                    //Image("Haas")
                       // .resizable()
                       // .frame(width: 56, height: 56)
                       // .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        //Text("Haas racing")
                          //  .font(.subheadline)
                          //  .fontWeight(.semibold)
                        
                        Text(stable)
                          //  .font(.subheadline)
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName: "paperplane.circle.fill")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    LoopsModule()
}
