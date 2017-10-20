//
//  ViewController.swift
//  Topi-Magjik
//
//  Created by Altina Spahija on 7/26/1396 AP.
//  Copyright © 1396 Altina Spahija. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var fotoja: UIImageView!
    var audioplayer:AVAudioPlayer!
    var topi=["topi1","topi2","topi3","topi4","topi5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
         luaj()
        }
        
    }

    @IBAction func luaj(_ sender: Any) {
     luaj()
    }
    func luaj()
    {
        let intRandomNumber = Int(arc4random_uniform(5))
        let ruaj = topi[intRandomNumber]
        fotoja.image = UIImage.init(named: String(ruaj))
        let fajlli = Bundle.main.url(forResource:"pergjigja", withExtension: "wav")
        audioplayer = try! AVAudioPlayer(contentsOf: fajlli!)
        audioplayer.play()
    }
}

