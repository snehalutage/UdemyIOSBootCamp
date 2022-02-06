//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonPressed(_ sender: UIButton)
    {
        playSound(clickedButton: sender.currentTitle!)
    }
    
    func playSound(clickedButton: String)
    {
        let url = Bundle.main.url(forResource: clickedButton, withExtension: "wav")
                player = try! AVAudioPlayer(contentsOf: url!)
                player.play()

    }

}

