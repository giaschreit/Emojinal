//
//  ViewController.swift
//  emojinal.day6
//
//  Created by Gia Schreitmueller on 8/12/19.
//  Copyright © 2019 Gia Schreitmueller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let emojis = ["😴": "sleepy monday", "🤗": "energetic"]
    let customMessages = [
        "sleepy monday":["Come on! You can get throught the day!","Grab a cup of coffee.", "Maybe you should go to sleep earlier."],
        "energetic": ["So glad you are feeling energized!!", "Keep this energy up!", "Spread this energy with your friends."] ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


@IBAction func showMessage(sender: UIButton) {
// let alertController = UIAlertController(title: "\(titleText)", message: "\(messageText)", preferredStyle: UIAlertController.Style.alert)
    
    if let selectedEmotion = sender.titleLabel?.text {
        let titleText = "Welcome to Emojinal"
        let number = Int.random(in : 0...2)
        let emojiMessage = customMessages[emojis[selectedEmotion]!]?[number]
        
        
        let alertController = UIAlertController(title:"\(titleText)", message: "\(emojiMessage!)", preferredStyle:UIAlertController.Style.alert)
        
     alertController.addAction(UIAlertAction(title: "OK", style:UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion:nil)
    
}
}

}
