//
//  Profiles.swift
//  cafeConnect
//
//  Created by Ellie Kim on 2/24/24.
//

import AVFoundation
import Combine
import Foundation

class Profile: NSObject, AVAudioPlayerDelegate, ObservableObject {
    let audio: String
    let name: String
    let school: String
    let major: String
    
    init(audio: String, name: String, school: String, major: String) {
        self.audio = audio
        self.name = name
        self.school = school
        self.major = major
    }
    var player: AVAudioPlayer?
    @Published var finishedPlaying: Bool = false 
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: audio, withExtension: "mp3") else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.delegate = self // Set the delegate to self
            player?.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        finishedPlaying = true
    }
}

