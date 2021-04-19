//
//  rememberCardApp.swift
//  rememberCard
//
//  Created by Максим Нуждин on 17.04.2021.
//

import SwiftUI

@main
struct rememberCardApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
