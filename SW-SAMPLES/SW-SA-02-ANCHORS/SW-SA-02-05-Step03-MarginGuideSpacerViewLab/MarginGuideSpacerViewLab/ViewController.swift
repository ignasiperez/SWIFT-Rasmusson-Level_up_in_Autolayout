//
//  ViewController.swift
//  MarginGuideSpacerViewLab
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
    
    // Create controls
    let lgLeading = UILayoutGuide()
    let btnOk = makeButton(title: "OK",
                           color: UIColor.darkBlue)
    let lgMiddle = UILayoutGuide()
    let btnCancel = makeButton(title: "CANCEL",
                               color: UIColor.darkGreen)
    let lgTrailing = UILayoutGuide()
    
    
    // Add to subview & layout guide
    view.addSubview(btnOk)
    view.addSubview(btnCancel)
    view.addLayoutGuide(lgLeading)
    view.addLayoutGuide(lgMiddle)
    view.addLayoutGuide(lgTrailing)
    
    
    // Setup constraints
    let margins: UILayoutGuide = view.layoutMarginsGuide
    
    // Leading guide
    margins.leadingAnchor
      .constraint(equalTo: lgLeading.leadingAnchor)
      .isActive = true
    lgLeading.trailingAnchor
      .constraint(equalTo: btnOk.leadingAnchor)
      .isActive = true
    
    // Middle guide
    btnOk.trailingAnchor
      .constraint(equalTo: lgMiddle.leadingAnchor)
      .isActive = true
    lgMiddle.trailingAnchor
      .constraint(equalTo: btnCancel.leadingAnchor)
      .isActive = true

    // Trailing guide
    btnCancel.trailingAnchor
      .constraint(equalTo: lgTrailing.leadingAnchor)
      .isActive = true
    lgTrailing.trailingAnchor
      .constraint(equalTo: margins.trailingAnchor)
      .isActive = true
    
    // Equal widths
    btnOk.widthAnchor
      .constraint(equalTo: btnCancel.widthAnchor)
      .isActive = true
    lgLeading.widthAnchor
      .constraint(equalTo: lgMiddle.widthAnchor)
      .isActive = true
    lgLeading.widthAnchor
      .constraint(equalTo: lgTrailing.widthAnchor)
      .isActive = true
    
    // Vertical position
    lgLeading.centerYAnchor
      .constraint(equalTo: view.centerYAnchor)
      .isActive = true
    lgMiddle.centerYAnchor
      .constraint(equalTo: view.centerYAnchor)
      .isActive = true
    lgTrailing.centerYAnchor
      .constraint(equalTo: view.centerYAnchor)
      .isActive = true
    btnOk.centerYAnchor
      .constraint(equalTo: view.centerYAnchor)
      .isActive = true
    btnCancel.centerYAnchor
      .constraint(equalTo: view.centerYAnchor)
      .isActive = true
    
    
    // Giving layout guides default height
    lgLeading.heightAnchor
      .constraint(equalToConstant: 1)
      .isActive = true
    lgMiddle.heightAnchor
      .constraint(equalToConstant: 1)
      .isActive = true
    lgTrailing.heightAnchor
      .constraint(equalToConstant: 1)
      .isActive = true
  }
  
  
  func makeButton(title: String, color: UIColor)
  -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(title, for: .normal)
    button.titleLabel?.adjustsFontSizeToFitWidth = true
    button.contentEdgeInsets =
      UIEdgeInsets.init(top: 8, left: 16, bottom: 8, right: 16)
    button.backgroundColor = color
    
    return button
  }

}


extension UIColor {
  static let darkBlue
    = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
  static let darkGreen
    = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
}

