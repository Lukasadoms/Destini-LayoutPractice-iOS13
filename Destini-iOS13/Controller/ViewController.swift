//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
 
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstButtonLabel: UIButton!
    @IBOutlet weak var secondButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedUI()
    }

    @IBAction func actionButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        storyBrain.checkAnswer(userAnswer)
        updatedUI()
    }
    
    func updatedUI() {
        storyLabel.text = storyBrain.getStoryLabel()
        firstButtonLabel.setTitle(storyBrain.getButton1Title(), for: .normal)
        secondButtonLabel.setTitle(storyBrain.getButton2Title(), for: .normal)
    }
    
}

