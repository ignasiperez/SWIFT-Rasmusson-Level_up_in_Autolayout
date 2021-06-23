//
//  ViewController.swift
//  ReadableContentGuideLab
//
//  Created by ignasiperez.com on 23/06/2021.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViews()
  }
  
  
  func setupViews() {
    let label = makeLabel(withText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

    view.addSubview(label)
    
    let readable = view.readableContentGuide
    
    NSLayoutConstraint.activate([
      label.topAnchor
        .constraint(equalTo: readable.topAnchor),
      label.bottomAnchor
        .constraint(equalTo: readable.bottomAnchor),
      label.leadingAnchor
        .constraint(equalTo: readable.leadingAnchor),
      label.trailingAnchor
        .constraint(equalTo: readable.trailingAnchor)
    ])
  }
  
  
  func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false // important!
    label.text = text
    label.backgroundColor = .systemYellow
    label.numberOfLines = 0
    label.font = UIFont.systemFont(ofSize: 20)
    
    return label
  }
}

