//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Will Redmond on 2/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        var messages = ["You Are Da Bomb!", "You Are Great!", "You Are Awesome!", "Be Mine?", "Howdy ;)"]
        
        print(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        messageLabel.text = messages[messageNumber]
        messageNumber += 1
        
        if imageNumber == 10{
            imageNumber = 0
        }
        
        if messageNumber == messages.count{
            messageNumber = 0
        }

    }
    
}

