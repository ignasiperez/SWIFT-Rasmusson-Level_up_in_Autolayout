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
    let lblBottom = makeLabel(withText: "Bottom",
                              withSize: 32)
    
    let lblLeading = makeLabel(withText: "Leading",
                               withSize: 32)
    let lblTrailing = makeLabel(withText: "Trailing",
                                withSize: 32)
    
    view.addSubview(lblTop)
    view.addSubview(lblBottom)
    view.addSubview(lblLeading)
    view.addSubview(lblTrailing)
    
    
    NSLayoutConstraint.activate([
      lblTop.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 24),
      lblTop.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      
      // Challenge: Add a bottom label
      lblBottom.bottomAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                    constant: -24),
      lblBottom.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      
      lblLeading.leadingAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
      lblLeading.centerYAnchor
        .constraint(equalTo: view.centerYAnchor),
      
      lblTrailing.trailingAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
      lblTrailing.centerYAnchor
        .constraint(equalTo: view.centerYAnchor),
      
    ])
        
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
