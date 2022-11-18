//
//  HomeView.swift
//  destini-viewCode
//
//  Created by Hugo Silva on 18/11/22.
//

import UIKit

class HomeView: UIView {
   
   lazy var backgroundImageView = {
      let img = UIImageView()
      img.translatesAutoresizingMaskIntoConstraints = false
      img.image = UIImage(named: "background")
      img.contentMode = .scaleAspectFill
      return img
   }()
   
   lazy var firstButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("First", for: .normal)
      bt.backgroundColor = UIColor(named: "ThemePurple")
      bt.clipsToBounds = true
      bt.layer.cornerRadius = 15
      bt.titleLabel?.numberOfLines = 0
      bt.tag = 1
      bt.setTitleColor(.white, for: .normal)
      return bt
   }()
   
   lazy var secondButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("Second", for: .normal)
      bt.backgroundColor = UIColor(named: "ThemePink")
      bt.clipsToBounds = true
      bt.layer.cornerRadius = 15
      bt.titleLabel?.numberOfLines = 0
      bt.tag = 2
      bt.setTitleColor(.white, for: .normal)
      return bt
   }()
   
   lazy var storyLabel = {
      let lb = UILabel()
      lb.translatesAutoresizingMaskIntoConstraints = false
      lb.text = "Story"
      lb.numberOfLines = 0
      lb.font = .systemFont(ofSize: 20)
      lb.textColor = .white
      return lb
   }()
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      self.setSubviews()
      self.setConstraints()
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}

extension HomeView {
   private func setSubviews () {
      self.addSubview(backgroundImageView)
      self.addSubview(firstButton)
      self.addSubview(secondButton)
      self.addSubview(storyLabel)
   }
   private func setConstraints () {
      NSLayoutConstraint.activate([
         self.backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
         self.backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
         self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
         self.backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
         
         self.firstButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20),
         self.firstButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
         self.firstButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
         self.firstButton.heightAnchor.constraint(equalToConstant: 60),
         
         self.secondButton.bottomAnchor.constraint(equalTo: self.firstButton.topAnchor, constant: -20),
         self.secondButton.leadingAnchor.constraint(equalTo: self.firstButton.leadingAnchor),
         self.secondButton.trailingAnchor.constraint(equalTo: self.firstButton.trailingAnchor),
         self.secondButton.heightAnchor.constraint(equalTo: self.firstButton.heightAnchor),
         
         self.storyLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
         self.storyLabel.leadingAnchor.constraint(equalTo: self.firstButton.leadingAnchor),
         self.storyLabel.trailingAnchor.constraint(equalTo: self.firstButton.trailingAnchor)
      ])
   }
}
