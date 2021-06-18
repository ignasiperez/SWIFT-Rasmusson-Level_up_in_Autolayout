//
//  ViewController.swift
//  BaselineAnchor
//
//  Created by ignasiperez.com on 18/06/2021.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setup()
  }
  
  
  func setup() {
    let smallLabel = makeLabel(withText: "small", size: 12)
    let largeLabel = makeLabel(withText: "large", size: 32)
    
    view.addSubview(smallLabel)
    view.addSubview(largeLabel)
    
    smallLabel.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
      .isActive = true
    smallLabel.leadingAnchor
      .constraint(equalTo: view.leadingAnchor, constant: 8)
      .isActive = true
    
    // Pinning topAnchor
    //    largeLabel.topAnchor
    //      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
    //      .isActive = true
    
    // Center along the Y axis
    largeLabel.centerYAnchor
      .constraint(equalTo: smallLabel.centerYAnchor)
      .isActive = true
    largeLabel.leadingAnchor
      .constraint(equalTo: smallLabel.trailingAnchor, constant: 8)
      .isActive = true
  }
  
  
  func makeLabel(withText text: String,
                 size: CGFloat
  ) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    
    label.backgroundColor = .systemYellow
    label.font = UIFont.systemFont(ofSize: size)
    label.text = text
    
    return label
  }
  
}

