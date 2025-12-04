//
//  StacksModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 04.12.2025.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
        VStack(alignment: .leading){
            // Cell 1
            HStack {
                
                Image("Alpine")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Alpine racing")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Alpine")
                        .font(.subheadline)
                    
                }
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .foregroundColor(.blue)
                    
            }
            
            Divider()
            
            // Cell 2
            HStack {
                
                Image("Haas")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Haas racing")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Hass")
                        .font(.subheadline)
                    
                }
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .foregroundColor(.blue)
                
            }
            Divider()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    StacksModule()
}
