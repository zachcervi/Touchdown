//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Zach Cervi on 6/30/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
