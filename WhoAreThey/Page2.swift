//
//  page2.swift
//  WhoAreThey
//
//  Created by pppppp on 10/11/2561 BE.
//  Copyright © 2561 Natsinee Thanannirat. All rights reserved.
//
import UIKit

class Page2: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    let diceArray = ["p1", "h1"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var imageView1: UIImageView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDiceFace()
    }
        func changeDiceFace()  {
        randomDiceIndex1 = Int(arc4random_uniform(6))
   
        print (randomDiceIndex1)
        //print (randomDiceIndex2)
        
        imageView1.image = UIImage(named:diceArray[randomDiceIndex1])
    }
}//Page2

