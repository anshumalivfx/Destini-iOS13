//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    var currentStory:Story = Story(title: "You see forks in the road", choice1: "Take a left", choice2: "Take a right")
    let story = [
        Story(title: "You see forks in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play Date"),
        Story(title: "You find a treasure chest", choice1: "Open It", choice2: "Check for traps"),
    ]
    
    mutating func nextStory(userChoice: String)->Story{
        if(userChoice=="Take a left"){
            currentStory=Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play Date")
        }
        else if(userChoice=="Take a right"){
            currentStory=Story(title: "You find a treasure chest", choice1: "Open It", choice2: "Check for traps")
        }
        else {
            currentStory=Story(title: "You see forks in the road", choice1: "Take a left", choice2: "Take a right")
        }
        return currentStory
    }
    
}

