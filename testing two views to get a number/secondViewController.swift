//
//  secondViewController.swift
//  X Quiz 2.0
//
//  Created by shoaib ramjaun on 2018-04-23.
//  Copyright © 2018 shoaib ramjaun. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var questionDisplayLabel: UILabel!
    
    
    
    var scoreTotaltwo = 0
    var scoreTwo = 0
    var score = 3
     var playName: String?
    var digits: Int?
    var n = 0
    var x = 0
    var answer = 0
    var counter = 240
    var timesTried = 0
    var timer = Timer()
    var scoreTotal = 3

    @IBAction func checkAnswerPressed(_ sender: UIButton) {
     
        timesTried+=1
        let answerCheck = "\(answer)"
        if (answerTextField.text == answerCheck){
questionDisplayLabel.text = "Correct! 👏"
            timer.invalidate()
            
            performSegue(withIdentifier: "appsecVC", sender: self)
        }
        else {
            score -= 1
            
           questionDisplayLabel.text = "Incorrect! 😩, Try again."
        }
        if (timesTried>3){
           performSegue(withIdentifier: "appsecVC", sender: self)
        }
scoreLabel.text = "Score: \(score) / \(scoreTotal) "
        
    }
        

    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreTotal += scoreTotaltwo
        score += scoreTwo
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)

        scoreLabel.text = "Score: \(score) / \(scoreTotal) "
        if let nameToDisplay = playName {
            
            playerNameLabel.text = "Player: \(nameToDisplay)"

        }
        let digitsX = digits
        if (digitsX == 21){
            n = Int((arc4random_uniform(89)) + 10)
            x = Int((arc4random_uniform(9)))
            answer = n * x
            questionLabel.text = "\(n) x \(x)"
        }
        if (digitsX == 22){
            n = Int((arc4random_uniform(89)) + 10)
            x = Int((arc4random_uniform(89)) + 10)
            answer = n * x
            questionLabel.text = "\(n) x \(x)"
        }
        if (digitsX == 23){
            n = Int((arc4random_uniform(899)) + 100)
            x = Int((arc4random_uniform(89)) + 10)
            answer = n * x
            questionLabel.text = "\(n) x \(x)"
        }
        if (digitsX == 24){
            n = Int((arc4random_uniform(8999)) + 1000)
            x = Int((arc4random_uniform(89)) + 10)
            answer = n * x
            questionLabel.text = "\(n) x \(x)"
        }
        if (digitsX == 31){
            n = Int((arc4random_uniform(899)) + 100)
            x = Int((arc4random_uniform(9)))
            answer = n * x
            questionLabel.text = "\(n) x \(x)"
        }
        if (digitsX == 33){
            n = Int((arc4random_uniform(899)) + 100)
            x = Int((arc4random_uniform(899)) + 100)
            answer = n * x
            questionLabel.text = "\(n) x \(x)"
        }
        if (digitsX == 34){
            n = Int((arc4random_uniform(8999)) + 1000)
            x = Int((arc4random_uniform(899)) + 100)
            answer = n * x
            questionLabel.text = "\(n) x \(x)"
        }
        if (digitsX == 44){
            n = Int((arc4random_uniform(8999)) + 1000)
            x = Int((arc4random_uniform(8999)) + 1000)
            answer = n * x
            questionLabel.text = "\(n) x \(x)"
        }
        self.answerTextField.delegate = self
     
    
    }
    override func prepare(for seque : UIStoryboardSegue, sender: Any?){
        if let destination = seque.destination as? thirdViewController {
            destination.playName = playName
            destination.digits = digits
            destination.scoreTotalOne = scoreTotal
            destination.scoreOne = score
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return(true)
    }
    
    
    @objc func timerAction() {
        counter -= 1
        timerLabel.text = "Timer: \(counter) sec"
        if (counter <= 0){
           timerLabel.text = "Time's UP!"
            questionDisplayLabel.text = "Correct answer: \(answer)"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
