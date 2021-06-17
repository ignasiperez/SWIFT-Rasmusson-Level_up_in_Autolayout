//
//  ViewController.swift
//  AnchorsLab
//
//  Created by ignasiperez.com on 16/06/2021.
//

import UIKit


class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViews()
  }
  
  
  func setupViews() {
    let upperLeftLabel = makeLabel(withText: "upperLeft")
    let upperRightLabel = makeLabel(withText: "upperRight")
    
    view.addSubview(upperLeftLabel)
    view.addSubview(upperRightLabel)
    
    upperLeftLabel.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
      .isActive = true
    upperLeftLabel.leadingAnchor
      .constraint(equalTo: view.leadingAnchor, constant: 8)
      .isActive = true
    
    
    // Challenge
    upperRightLabel.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                  constant: 8)
      .isActive = true
    upperRightLabel.trailingAnchor
      .constraint(equalTo: view.trailingAnchor,
                  constant: -8)
      .isActive = true
    
  }
  
  
  func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    
    label.text = text
    label.backgroundColor = .systemYellow
    
    return label
  }

}
