//
//  HomeVC.swift
//  destini-viewCode
//
//  Created by Hugo Silva on 18/11/22.
//

import UIKit

class HomeVC: UIViewController {
   
   var screen: HomeView?
   var currentPart = 0
   
   override func loadView() {
      self.screen = HomeView()
      self.view = self.screen
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.setStory()
      self.configureButtons()
   }
}

extension HomeVC {
   func setStory () {
      screen?.storyLabel.text = StoryGuide.story[currentPart].title
      screen?.firstButton.setTitle(StoryGuide.story[currentPart].choice1, for: .normal)
      screen?.secondButton.setTitle(StoryGuide.story[currentPart].choice2, for: .normal)
   }
   func configureButtons () {
      screen?.firstButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
      screen?.secondButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
   }
}

extension HomeVC {
   @objc func buttonPressed (_ sender: UIButton) {
      if sender.tag == 1 {
         currentPart = StoryGuide.story[currentPart].choice1Destination
      } else {
         currentPart = StoryGuide.story[currentPart].choice2Destination
      }
      self.setStory()
   }
}
