//
//  BindingModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 09.12.2025.
//

import SwiftUI

struct BindingModule: View {
    
    @State var isOn = false
    @State var showBatterylife = false
    
    var body: some View {
        VStack {
            Text("Notification: \(isOn ? "Enabled" : "Disabled")")
            
            if showBatterylife {
                Text("Battery life is currently on.")
            }
            
            SettingsRowView(imageName: "bell.circle.fill", title: "Notification", isOn: $isOn)
            
            SettingsRowView(imageName: "battery.100.circle.fill", title: "Battery life", isOn: $showBatterylife)
        }
    }
}

#Preview {
    BindingModule()
}

struct SettingsRowView: View {
    var imageName: String
    var title: String
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
                
                Text(title)
                    .font(.subheadline)
                
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
