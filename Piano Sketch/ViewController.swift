//
//  ViewController.swift
//  Piano Sketch
//
//  Created by Christian Schmutte on 03.03.19.
//  Copyright © 2019 Christian Schmutte. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func noteKeyButtonPressed(_ sender: UIButton) {
        if let soundURL = Bundle.main.url(forResource: "SoundFiles/note\(sender.tag)", withExtension: "wav"){
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            AudioServicesPlaySystemSound(mySound)
        }
    }
    
}

