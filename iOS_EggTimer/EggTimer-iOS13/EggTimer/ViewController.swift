//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes: [String:Int] = ["Soft":5, "Medium":8, "Hard":12]
    
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var textLabel: UILabel!
    var timer = Timer()
    
    @IBOutlet weak var progressStatus: UIProgressView!
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton)
    {
        timer.invalidate()
        let hardness = sender.currentTitle!
        progressStatus.progress = 0.0
        secondsPassed = 0
        textLabel.text = hardness
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
       
    }
    
    @objc func updateTimer() {
        if(secondsPassed < totalTime)
        {
            progressStatus.progress =  Float(secondsPassed) / Float(totalTime)
            secondsPassed += 1
        }
        else
        {
            timer.invalidate()
            textLabel.text = "EGGS ARE READY!"
            progressStatus.progress = 1.0
            playSound()
        }
    }
    
    func playSound() {
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }

}
