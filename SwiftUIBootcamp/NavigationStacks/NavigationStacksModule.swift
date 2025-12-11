//
//  NavigationStacksModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 09.12.2025.
//

import SwiftUI


struct Team: Identifiable, Hashable {
    var id = NSUUID().uuidString
    let teamName: String
}

struct NavigationStacksModule: View {
var drivers: [Driver] = [
    .init(driverName: "Lewis Hamilton"),
    .init(driverName: "Charles Leclerc"),
    .init(driverName: "Max Verstappen"),
    .init(driverName: "Fernando Alonso"),
    .init(driverName: "Lando Norris"),
    .init(driverName: "Checo Perez"),
    .init(driverName: "Daniel Riciardo"),
    .init(driverName: "Lewis Hamilton")
    
]
    
var stables: [Team] = [
    .init(teamName: "Mercedes"),
    .init(teamName:  "Alpine"),
    .init(teamName: "Ferrari"),
    .init(teamName: "Red Bull"),
    .init(teamName: "McLaren"),
    .init(teamName: "Aston Martin"),
    .init(teamName: "Haas"),
    .init(teamName: "Williams")
]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(drivers) { driver in
    //                    NavigationLink {
    //                        DriverDetailView(driver: driver)
    //                    } label: {
    //                        Text(driver)
    //                    }
                        NavigationLink(value: driver) {
                            Text(driver.driverName)
                        }
                    }
                }
                Section {
                    ForEach(stables) { stable in
                        NavigationLink(value: stable) {
                            Text(stable.teamName)
                        }
                    }
                }
            }
            .navigationDestination(for: Driver.self, destination: { driver in
                DriverDetailView(driver: driver.driverName)
            })
            
            .navigationDestination(for: Team.self, destination: { team in
                DriverDetailView(driver: team.teamName)
            })
//            .navigationBarTitleDisplayMode(.automatic)
            .navigationTitle("Navigation")
        }
        
        // don't place nav modifier on the nav stck. place on view inside of stack
    }
}

#Preview {
    NavigationStacksModule()
}
