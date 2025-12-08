//
//  MenuItem.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 08.12.2025.
//

import Foundation

struct MenuItem: Identifiable {
    var id = NSUUID().uuidString
    
    let imageName: String
    let type: String
    let restaurantName: String
}
