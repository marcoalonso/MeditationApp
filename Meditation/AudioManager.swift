//
//  AudioManager.swift
//  Meditation
//
//  Created by Marco Alonso Rodriguez on 03/03/23.
//

import Foundation
import AVKit

final class AudioManager: ObservableObject {
    ///Only one instance of the class and to be access by any component of the class
//    static let shared = AudioManager()
    var player: AVAudioPlayer?
    
    @Published private(set) var isPlaying: Bool = false {
        didSet {
            print("isPlaying", isPlaying)
        }
    }
    
    func startPlayer(track: String, isPreview: Bool = false) {
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url)
            
            if isPreview {
                player?.prepareToPlay()
            } else {
                player?.play()
                isPlaying = true
            }
        } catch {
            print("Debug: error \(error.localizedDescription)")
        }
    }
    
    func playPause(){
        guard let player = player else {
            print("Instance of audio player not found!")
            return
        }
        
        if player.isPlaying {
            player.pause()
            isPlaying = false
        } else {
            player.play()
            isPlaying = true
        }
    }
}
