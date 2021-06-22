//
//  ViewController.swift
//  LayoutMarginLab
//
//  Created by ignasiperez.com on 22/06/2021.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViews()
  }
  
  
  func setupViews() {
    
    let redView = UIView()
    redView.translatesAutoresizingMaskIntoConstraints = false
    redView.backgroundColor = .systemPink
    
    view.addSubview(redView)
    
    NSLayoutConstraint.activate([
      redView.topAnchor
        .constraint(equalTo: view.layoutMarginsGuide.topAnchor),
      redView.bottomAnchor
        .constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
      redView.leadingAnchor
        .constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
      redView.trailingAnchor
        .constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
    ])
  }

}

