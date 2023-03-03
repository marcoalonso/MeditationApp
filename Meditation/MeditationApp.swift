//
//  MeditationApp.swift
//  Meditation
//
//  Created by Marco Alonso Rodriguez on 20/02/23.
// Continuar en https://www.youtube.com/watch?v=Bvep_4H9Kdg


import SwiftUI

@main
struct MeditationApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
