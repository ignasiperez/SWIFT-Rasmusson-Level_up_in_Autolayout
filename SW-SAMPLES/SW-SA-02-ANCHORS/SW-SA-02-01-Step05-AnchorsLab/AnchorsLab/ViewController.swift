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
    let bottomLeftLabel = makeSecondaryLabel(withText: "bottomLeft")
    let bottomRightButton = makeButton(withText: "bottomRight")
    let redView = makeView()
    
    view.addSubview(upperLeftLabel)
    view.addSubview(upperRightLabel)
    view.addSubview(bottomLeftLabel)
    view.addSubview(bottomRightButton)
    view.addSubview(redView)
    
    upperLeftLabel.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                  constant: 24)
      .isActive = true
    upperLeftLabel.leadingAnchor
      .constraint(equalTo: view.leadingAnchor,
                  constant: 24)
      .isActive = true
    
    // Challenge
    upperRightLabel.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                  constant: 24)
      .isActive = true
    upperRightLabel.trailingAnchor
      .constraint(equalTo: view.trailingAnchor,
                  constant: -24)
      .isActive = true
    
    // Challenge
    bottomLeftLabel.bottomAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                  constant: -24)
      .isActive = true
    bottomLeftLabel.leadingAnchor
      .constraint(equalTo: view.leadingAnchor,
                  constant: 24)
      .isActive = true
    
    
    bottomRightButton.bottomAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                  constant: -24)
      .isActive = true
    bottomRightButton.trailingAnchor
      .constraint(equalTo: view.trailingAnchor,
                  constant: -24)
      .isActive = true
    
    
    redView.centerXAnchor
      .constraint(equalTo: view.centerXAnchor)
      .isActive = true
    redView.centerYAnchor
      .constraint(equalTo: view.centerYAnchor)
      .isActive = true
    
    redView.heightAnchor
      .constraint(equalToConstant: 50)
      .isActive = true
    redView.widthAnchor
      .constraint(equalToConstant: 100)
      .isActive = true
  }
  
  
  func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    
    label.backgroundColor = .systemYellow
    label.text = text
    
    return label
  }
  
  
  func makeSecondaryLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    
    label.backgroundColor = .systemYellow
    label.text = text
    
    label.font = UIFont.systemFont(ofSize: 12)
    label.textColor = .systemGray
    
    return label
  }
  
  
  func makeButton(withText text: String) -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    
    button.backgroundColor = .systemBlue
    button.setTitle(text, for: .normal)
    
    return button
  }
  
  
  func makeView() -> UIView {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    
    view.backgroundColor = .systemPink
    
    return view
  }

}
