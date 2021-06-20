//
//  ViewController.swift
//  SafeAreaLab
//
//  Created by ignasiperez.com on 20/06/2021.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViews()
  }
  
  
  func setupViews() {
    let lblTop = makeLabel(withText: "Top",
                           withSize: 32)
    
    
    view.addSubview(lblTop)
    
    lblTop.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
      .isActive = true
    lblTop.centerXAnchor
      .constraint(equalTo: view.centerXAnchor)
      .isActive = true
    
  }
  
  
  func makeLabel(withText text: String,
                 withSize size: CGFloat) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    
    label.backgroundColor = .systemYellow
    label.font = UIFont.systemFont(ofSize: size)
    label.text = text
    
    return label
  }


}
