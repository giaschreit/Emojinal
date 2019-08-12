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

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


@IBAction func showMessage(sender: UIButton) {
// let alertController = UIAlertController(title: "\(titleText)", message: "\(messageText)", preferredStyle: UIAlertController.Style.alert)
    
    if let selectedEmotion = sender.titleLabel?.text {
        let titleText = "Sleepy Monday"
        let messageText = "Come on! You can get through the day!"
        
        let alertController = UIAlertController(title:"\(titleText)", message: "\(messageText)", preferredStyle:UIAlertController.Style.alert)
        
     alertController.addAction(UIAlertAction(title: "OK", style:UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion:nil)
    
}
}

}
