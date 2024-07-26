//
//  FructusApp.swift
//  Fructus
//
//  Created by Sanat Salian on 05/06/24.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage ("isOnboarding") var isOnboarding = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
