//
//  ViewController.swift
//  hustle-mode
//
//  Created by Anjaneya, Sandeep on 8/17/17.
//  Copyright © 2017 Anjaneya, Sandeep. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var PowerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var Rocket: UIImageView!
    @IBOutlet weak var Hustlelbl: UILabel!
    @IBOutlet weak var onlbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError {
            print(error.description)
        }
    }

    @IBAction func PowerBtnPress(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        PowerBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.Rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 496)
        }) { (finished) in
            self.Hustlelbl.isHidden = false
            self.onlbl.isHidden = false
            
        }
    }
}

