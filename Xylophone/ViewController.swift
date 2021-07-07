//
//  ViewController.swift
//  Xylophone
//
//  Created by rapidBizApps on 6/30/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onCPressed(_ sender: UIButton) {
        
        playSound(songName: sender.currentTitle!)
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    //code that executes after 0.2 seconds of delay
                    sender.alpha = 1.0
             }
    }
    
    func playSound(songName: String) {
           let url = Bundle.main.url(forResource: songName, withExtension: "wav")
           player = try! AVAudioPlayer(contentsOf: url!)
           player.play()
                   
       }
    
    
}

