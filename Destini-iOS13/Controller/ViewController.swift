//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Anshumali Karna on 02/23/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = "You see a fork in the road."
        choice1Button.setTitle("Take a left", for: .normal)
        choice2Button.setTitle("Take a right", for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if(sender.currentTitle == "Take a left"){
            storyLabel.text = "Damn You Asshole"
        }
        else if(sender.currentTitle == "Take a right"){
            storyLabel.text = "Aree Bhaiya"
        }
    }
}

