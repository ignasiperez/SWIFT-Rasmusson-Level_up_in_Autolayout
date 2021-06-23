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
    let vwRed = UIView()
    vwRed.translatesAutoresizingMaskIntoConstraints = false
    vwRed.backgroundColor = .systemPink
    
    view.addSubview(vwRed)
    
    let margins = view.layoutMarginsGuide
    
    NSLayoutConstraint.activate([
      vwRed.topAnchor
        .constraint(equalTo: margins.topAnchor),
      vwRed.bottomAnchor
        .constraint(equalTo: margins.bottomAnchor),
      vwRed.leadingAnchor
        .constraint(equalTo: margins.leadingAnchor),
      vwRed.trailingAnchor
        .constraint(equalTo: margins.trailingAnchor)
    ])
  }

}

