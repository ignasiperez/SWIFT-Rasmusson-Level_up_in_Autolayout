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
    let btnOk = makeButton(title: "OK",
                           color: UIColor.darkBlue)
    let btnCancel = makeButton(title: "CANCEL",
                               color: UIColor.darkGreen)
    
    view.addSubview(btnOk)
    view.addSubview(btnCancel)
    
    print("ViewController - \(#function)")
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

