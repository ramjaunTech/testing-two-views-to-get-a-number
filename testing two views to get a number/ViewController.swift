//
//  ViewController.swift
//  testing two views to get a number
//
//  Created by shoaib ramjaun on 2018-04-23.
//  Copyright © 2018 shoaib ramjaun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var nameLabel: UITextField!
   var digits = 0
    var points = 0
    @IBAction func twoByOnePressed(_ sender: UIButton) {
        digits = 21
        performSegue(withIdentifier: "appVC", sender: self)
        print(digits)    }
    
    @IBAction func twoByTwoPressed(_ sender: UIButton) {
       digits = 22
        performSegue(withIdentifier: "appVC", sender: self)
        print(digits)
    }
    @IBAction func twoByThreePressed(_ sender: UIButton) {
       digits = 23
        performSegue(withIdentifier: "appVC", sender: self)
        print(digits)
    }
    @IBAction func twoByFourPressed(_ sender: UIButton) {
       digits = 24
        performSegue(withIdentifier: "appVC", sender: self)
        print(digits)
    }
    @IBAction func threeByOnePressed(_ sender: UIButton) {
        digits = 31
        performSegue(withIdentifier: "appVC", sender: self)
        print(digits)
    }
    @IBAction func threeByFourPressed(_ sender: UIButton) {
     digits = 34
        performSegue(withIdentifier: "appVC", sender: self)
        print(digits)
    }
    @IBAction func fourByFourPressed(_ sender: UIButton) {
        digits = 44
        performSegue(withIdentifier: "appVC", sender: self)
        print(digits)
    }
    
    override func prepare(for seque : UIStoryboardSegue, sender: Any?){
        if let destination = seque.destination as? secondViewController {
            destination.playName = nameLabel.text
            destination.digits = digits
        }
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return(true)
    }
    
    
    
    
    
    
    
    
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view, typically from a nib.
        self.nameLabel.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

