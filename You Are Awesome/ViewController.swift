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
    let totalNumberOfImages = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Da Bomb!", "You Are Great!", "You Are Awesome!", "Be Mine?", "Howdy ;)", "I have to try to write a message that is too long for the text box so I can fix it"]
        
        let randomMessage = Int.random(in: 0...messages.count-1)
        
        print(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        messageLabel.text = messages[randomMessage]
        
        if imageNumber == totalNumberOfImages{
            imageNumber = 0
        }
    }
    
}

