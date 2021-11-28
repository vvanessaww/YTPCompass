//
//  SparkChangeApp.swift
//  SparkChange
//
//  Created by Charlotte Meyer on 11/15/21.
//

import SwiftUI

@main
struct SparkChangeApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                    MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                }
                NavigationView {
                    RessourceView()
                }
                .tabItem {
                    Image(systemName: "heart")
                    Text("Resources")
                }
            }
        }
    }
}
