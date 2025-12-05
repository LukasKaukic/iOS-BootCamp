//
//  ListsModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 05.12.2025.
//

import SwiftUI

struct ListsModule: View {
    
  @State var stables = [
        "Alpine",
        "Astonmartin",
        "Ferrari",
        "Haas",
        "Mclaren",
        "Redbull",
        "Renault"
    ]
    
    @State var drivers = [
          "Lewis Hamilton",
          "Charles Leclerc",
          "Max Verstappen",
          "Fernando Alonso",
          "Lando Norris",
          "Checo Perez",
          "Daniel Ricciardo"
      ]
    
    var body: some View {
        List {
            
            Section("Test1") {
                ForEach(stables, id: \.self) { stable in
                    Text(stable)
                }
                .onDelete { indices in
                    stables.remove(atOffsets: indices)
                }
            }
            
            Section("Test2") {
                ForEach(drivers, id: \.self) { driver in
                    Text(driver)
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

#Preview {
    ListsModule()
}
