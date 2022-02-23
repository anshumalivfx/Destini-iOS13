//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title:String
    var Choice1:String
    var Choice2:String
    
    init(title:String, choice1:String, choice2:String) {
        self.title = title
        self.Choice1 = choice1
        self.Choice2 = choice2
    }
}
