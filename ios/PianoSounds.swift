//
//  PianoSounds.swift
//  pianoApp
//
//  Created by Janek Szynal on 14.04.2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import AVFoundation



@objc public class PianoSounds: NSObject {
  var player: AVAudioPlayer?

  @objc func play(){

    let path = Bundle.main.path(forResource: "key.wav", ofType: nil)!
    let url = URL(fileURLWithPath: path)

    do {
      self.player = try AVAudioPlayer(contentsOf: url)
      self.player?.play()
    } catch {
    }

  }


}
