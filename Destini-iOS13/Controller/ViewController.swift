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

    
    
    var storyBrains = StoryBrain()
    var currentStory:Story = Story(title: "You see forks in the road", choice1: "Take a left", choice2: "Take a right")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrains.currentStory.title
        choice1Button.setTitle(storyBrains.currentStory.Choice1, for: .normal)
        choice2Button.setTitle(storyBrains.currentStory.Choice2, for: .normal)
        
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if(sender.currentTitle == "Take a left"){
            currentStory = storyBrains.nextStory(userChoice: sender.currentTitle!)
            storyLabel.text = currentStory.title
            choice1Button.setTitle(currentStory.Choice1, for: .normal)
            choice2Button.setTitle(currentStory.Choice2, for: .normal)
        }
        else if(sender.currentTitle == "Take a right"){
            currentStory = storyBrains.nextStory(userChoice: sender.currentTitle!)
            storyLabel.text = currentStory.title
            choice1Button.setTitle(currentStory.Choice1, for: .normal)
            choice2Button.setTitle(currentStory.Choice2, for: .normal)
        }
        else {
            currentStory = storyBrains.nextStory(userChoice: sender.currentTitle!)
            storyLabel.text = currentStory.title
            choice1Button.setTitle(currentStory.Choice1, for: .normal)
            choice2Button.setTitle(currentStory.Choice2, for: .normal)
        }
    }
}
