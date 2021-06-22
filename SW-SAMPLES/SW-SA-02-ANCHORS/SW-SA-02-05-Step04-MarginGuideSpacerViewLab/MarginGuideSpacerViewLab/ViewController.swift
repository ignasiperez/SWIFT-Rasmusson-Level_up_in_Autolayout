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
    
    NSLayoutConstraint.activate([
      // Leading guide
      margins.leadingAnchor
        .constraint(equalTo: lgLeading.leadingAnchor),
      lgLeading.trailingAnchor
        .constraint(equalTo: btnOk.leadingAnchor),
      
      // Middle guide
      btnOk.trailingAnchor
        .constraint(equalTo: lgMiddle.leadingAnchor),
      lgMiddle.trailingAnchor
        .constraint(equalTo: btnCancel.leadingAnchor),

      // Trailing guide
      btnCancel.trailingAnchor
        .constraint(equalTo: lgTrailing.leadingAnchor),

      lgTrailing.trailingAnchor
        .constraint(equalTo: margins.trailingAnchor),
      
      // Equal widths
      btnOk.widthAnchor
        .constraint(equalTo: btnCancel.widthAnchor),

      lgLeading.widthAnchor
        .constraint(equalTo: lgMiddle.widthAnchor),

      lgLeading.widthAnchor
        .constraint(equalTo: lgTrailing.widthAnchor),

      // Vertical position
      lgLeading.centerYAnchor
        .constraint(equalTo: view.centerYAnchor),
      lgMiddle.centerYAnchor
        .constraint(equalTo: view.centerYAnchor),
      lgTrailing.centerYAnchor
        .constraint(equalTo: view.centerYAnchor),
      btnOk.centerYAnchor
        .constraint(equalTo: view.centerYAnchor),

      btnCancel.centerYAnchor
        .constraint(equalTo: view.centerYAnchor),

      // Giving layout guides default height
      lgLeading.heightAnchor
        .constraint(equalToConstant: 1),
      lgMiddle.heightAnchor
        .constraint(equalToConstant: 1),
      lgTrailing.heightAnchor
        .constraint(equalToConstant: 1)
    ])
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
