//
//  AudioManager.swift
//  Meditation
//
//  Created by Marco Alonso Rodriguez on 03/03/23.
//

import Foundation
import AVKit

final class AudioManager {
    ///Only one instance of the class and to be access by any component of the class
    static let shared = AudioManager()
    var player: AVAudioPlayer?
    
    func startPlayer(track: String) {
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            
            player?.play()
        } catch {
            print("Debug: error \(error.localizedDescription)")
        }
    }
}
