//
//  ViewController.swift
//  Xylophone
//
//  Created by nika taniashvili
//  Copyright © 2021 nika taniashvili. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate{
    
   var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundUrl = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")
        do {
            audioPlayer = try  AVAudioPlayer(contentsOf: soundUrl!)
        } catch {
            print("failed")
        }
        audioPlayer.play()
    }
    
//
  

}

