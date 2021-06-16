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
    
    view.addSubview(upperLeftLabel)
    
    upperLeftLabel.topAnchor
      .constraint(equalTo: view.topAnchor, constant: 8)
      .isActive = true
    upperLeftLabel.leadingAnchor
      .constraint(equalTo: view.leadingAnchor, constant: 8)
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


