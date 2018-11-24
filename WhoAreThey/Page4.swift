//
//  Page4.swift
//  WhoAreThey
//
//  Created by pppppp on 10/11/2561 BE.
//  Copyright © 2561 Natsinee Thanannirat. All rights reserved.
//
import UIKit
import Foundation
import AVFoundation
class Page4: UIViewController,AVAudioPlayerDelegate {
    
    var player : AVAudioPlayer!
    var randomDiceIndex1 : Int = 0
    let sound = "3"
    let diceArray = ["01", "02", "03", "04", "05", "06", "07", "08"]
    var timeCount = 20
    var timer = Timer()
    
    
    @IBOutlet weak var rewartImg: UIImageView!
    
    @IBAction func randomButton(_ sender: Any) {
        
        play()
        changeDiceFace()
    }
  
    func changeDiceFace()  {
        randomDiceIndex1 = Int(arc4random_uniform(9))
        rewartImg.image = UIImage(named:diceArray[randomDiceIndex1])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
       play()
       changeDiceFace()
    }
    
    func play() {
        let soundURL=Bundle.main.url(forResource: "3", withExtension:"mp3")
        player = try! AVAudioPlayer(contentsOf: soundURL!)
        player.play()
    }
}
