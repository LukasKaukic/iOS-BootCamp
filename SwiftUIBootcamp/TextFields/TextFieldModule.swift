//
//  TextFieldModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 08.12.2025.
//

import SwiftUI

struct TextFieldModule: View {
    @State var email = ""
    @State var password  = ""
    var body: some View {
        VStack(spacing: 24) {
            Image("Haas")
                .resizable()
                .frame(width: 150, height: 150)
          
            VStack {
                
                TextField("Enter your e-mail", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(8)
                    .keyboardType(.emailAddress)
                    .autocorrectionDisabled()
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(8)
                    .keyboardType(.emailAddress)
            }
            Button {
                print("Email is \(email)")
                print("Password is \(email)")
            } label: {
                Text("Log In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 50)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }

        }
        .padding()
    }
}

#Preview {
    TextFieldModule()
}
