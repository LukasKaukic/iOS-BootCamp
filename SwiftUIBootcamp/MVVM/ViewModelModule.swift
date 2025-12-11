//
//  ViewModelModule.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 11.12.2025.
//

import SwiftUI
internal import Combine

// Module

struct Driver: Identifiable, Hashable {
    var id = NSUUID().uuidString
    var driverName: String
}

// View Model

class DriversViewModel: ObservableObject {
    @Published var drivers = [Driver]()
    @Published var isLoading = false
        
    init() {
        fetchDrivers()
    }
    
    func fetchDrivers() {
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.isLoading = false
            
            self.drivers = [
                .init(driverName: "Lewis Hamilton"),
                .init(driverName: "Charles Leclerc"),
                .init(driverName: "Max Verstappen"),
                .init(driverName: "Fernando Alonso"),
                .init(driverName: "Lando Norris"),
                .init(driverName: "Checo Perez"),
                .init(driverName: "Daniel Riciardo"),
                .init(driverName: "Lewis Hamilton")
            ]
        }
    }
    func addDriver(name: String) {
        self.drivers.append(Driver(driverName: name))
    }
    
    func removeDriver() {
        drivers.remove(at: 0)
    }
}


struct ViewModelModule: View {
    @StateObject var viewModel = DriversViewModel()
    var body: some View {
        List {
            ForEach(viewModel.drivers) { driver in
                Text(driver.driverName)
            }
        Button("Add Driver") {
                viewModel.addDriver(name: "New Driver")
            }
            
            Button("Remove Driver") {
                    viewModel.removeDriver()
                }
        }
        .overlay {
            if viewModel.isLoading {
                ProgressView()
            }
        }
    }
}

#Preview {
    ViewModelModule()
}
