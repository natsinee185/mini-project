//
//  Page3.swift
//  WhoAreThey
//
//  Created by pppppp on 10/11/2561 BE.
//  Copyright © 2561 Natsinee Thanannirat. All rights reserved.
//
import UIKit
import AVFoundation
import Foundation
class Page3: UIViewController, AVAudioPlayerDelegate {
    
    var player : AVAudioPlayer!
    let allQuestion = QuestionBank()
    var timeCount = 20
    var timer = Timer()
    var score : Int = 0
    var questionNamber : Int = 0
    var pickedAnswer : Int = 0
    var correct : Int = 0
    var wrong : Int = 0
    let soundFilename = ["2","correct","wrong"]
    var checkStatusToPlay = false
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UILabel!
    @IBOutlet weak var processLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var porgressBar: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var questionText1: UIButton!
    @IBOutlet weak var questionText2: UIButton!
    
    @objc func processTimer() {
        playSound(soundFilename[0])
        if timeCount > 0 {
            
           timeCount -= 1
            
           timeLabel.text = "00: \(timeCount)"
            //timeLabel.text = String(timeCount)
        }else if timeCount == 0 {
            checkStatusToPlay = false
            player.stop()
            
        }else{
            timer.invalidate()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
        updateChoice()
    }
    
    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
        selector: #selector(Page3.processTimer), userInfo: nil,repeats: true)
        //สั่งให้เวลาเริ่มเดิน
        checkStatusToPlay = true
        //สั่งให้สถานะการเล่นเป็นจริง เพื่อให้เล่นได้
    }
    @IBAction func buttonChoice(_ sender: AnyObject)
    {
        if timeCount < 20 && timeCount > 0 {
          
        if sender.tag == pickedAnswer {
            print("ถูก")
             score = score+1
             playSound(soundFilename[1])
            ProgressHUD.showSuccess("ถูกต้องจ้า")
            
        }else{
            print("ผิด")
            ProgressHUD.showError("ผิดล้ะจ้า")
            playSound(soundFilename[2])
        }
        questionNamber = questionNamber+1
        updateChoice()
        }
    }//buttonChoice
    
    func updateUI() {
        porgressBar.frame.size.width = (view.frame.size.width / 10 ) * CGFloat(questionNamber)
        processLabel.text = String(questionNamber+1) + "/10"
        scoreLabel.text = "score : " + String(score)
      
    }//updateUI
    
    
    func updateChoice() {
        if questionNamber < allQuestion.list.count{
        imageView.image = UIImage(named: (allQuestion.list[questionNamber].questionImg))
        questionLabel.text = allQuestion.list[questionNamber].question
        questionText1.setTitle(allQuestion.list[questionNamber].questionText1, for:UIControl.State.normal)
        questionText2.setTitle(allQuestion.list[questionNamber].questionText2, for:UIControl.State.normal)
        pickedAnswer = allQuestion.list[questionNamber].correct
            

        }
        else{
        print ("end of question")
        let alert = UIAlertController(title: "Awsome", message: "You've finished all question,do you want to strat over คะแนนของคุณคือ \(score)", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {UIAlertAction in self.restratChoice()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            restratChoice()
        }
            updateUI()
        
        
    }//updateChoice()
    
    func restratChoice(){
        pickedAnswer = 0
        score = 0
        questionNamber = 0
        updateChoice()
        updateUI()
    }//restratChoice
    
    func playSound(_ playthis:String){
        let soundURL=Bundle.main.url(forResource:playthis, withExtension:"mp3")
            player = try! AVAudioPlayer(contentsOf: soundURL!)
            player.play()
    }
}// end class












//    func play() {
//        let soundURL=Bundle.main.url(forResource: "2", withExtension:"mp3")
//        player = try! AVAudioPlayer(contentsOf: soundURL!)
//        player.play()
//    }//play
    
    


































//    func checkAnswer() {
//        let correctAnswer = allQuestion.list[questionNamber].correct
//        if correctAnswer == pickedAnswer {
//            print("ถูกต้องจ้า")
//            score += 1
//            correct += 1
//        }else{
//            print("ผิดจ้า")
//           wrong += 1
//        }
//    }//checkAnswer




//        func nextQuestion() {
//            if questionNamber <= 10 {
//                questionLabel.text = allQuestion.list[questionNamber].question
//            }else{
//                print ("end of question")
//                let alert = UIAlertController(title: "Awsome", message: "You've finished all question,do you want to strat over คะแนนของคุณคือ \(score)", preferredStyle: .alert)
//
//                let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {
//                    UIAlertAction in
//                    self.restratChoice()
//                })
//                alert.addAction(restartAction)
//                present(alert, animated: true, completion: nil)
//            }
//        }//nextQuestion



//
//    func nextQuestion() {
//        if questionNamber <= 4 {
//            questionLabel.text = allQuestion.list[questionNamber].questionText
//        }else{
//            print ("end of question")
//            let alert = UIAlertController(title: "Awsome", message: "You've finished all question,do you want to strat over คะแนนของคุณคือ \(score)", preferredStyle: .alert)
//
//            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {
//                UIAlertAction in self.starOver()
//            })
//            alert.addAction(restartAction)
//            present(alert, animated: true, completion: nil)
//        }
//    } //end nextQuestion


//    override func viewDidLoad() {
//        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Page3.processTimer), userInfo: nil, repeats: true)


//    func playSound(_ playthis:String){
//        let soundURL=Bundle.main.url(forResource:playthis, withExtension:"mp3")
//        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
//        audioPlayer.play()
//



