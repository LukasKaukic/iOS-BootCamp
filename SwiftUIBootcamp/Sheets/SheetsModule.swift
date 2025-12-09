//
//  SheetsModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 09.12.2025.
//

import SwiftUI

struct SheetsModule: View {
    @State var showSheet = false
    @State var menuItem: MenuItem?
    
    var body: some View {
        VStack {
            if let item = menuItem {
                MenuITemView(menuItem: item)
            }
            Button("Show Sheet") {
                showSheet.toggle()
//                menuItem = MenuItem(imageName: "Burgers", type: "American", restaurantName: "Nečum")
            }
        }
        
        .sheet(isPresented: $showSheet) {
            menuItem = MenuItem(imageName: "Burgers", type: "American", restaurantName: "Nečum")
        } content: {
            Text("On Dismiss stuff")
        }
//        .sheet(item: $menuItem)  { menuItem in
//            MenuITemView(menuItem: menuItem)
//                .presentationDetents([.height(240)])
//        }
//        .sheet(isPresented: $showSheet) {
//            UberEatsMenu()
//                .presentationDetents([.height(260), .medium, .large])
//        }
    }
}

#Preview {
    SheetsModule()
}
