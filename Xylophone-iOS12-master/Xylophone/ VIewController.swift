//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController{
  
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    @IBAction func notePressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            playSound(myNum: 1)
        }
        else if sender.tag == 2 {
            playSound(myNum: 2)
        }
        else if sender.tag == 3 {
            playSound(myNum: 3)
        }
        else if sender.tag == 4 {
            playSound(myNum: 4)
        }
        else if sender.tag == 5 {
            playSound(myNum: 5)
        }
        else if sender.tag == 6 {
            playSound(myNum: 6)
        }
        else  {
            playSound(myNum: 7)
        }
        }
    
    func playSound(myNum: Int) {
        var mystring: String = "note"
        
        mystring += String(myNum)
        
        let soundURL = Bundle.main.url(forResource: mystring, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
        
    }
    }

