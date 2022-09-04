//
//  Card.swift
//  tutorial_native_components
//
//  Created by Owais Kreifeh on 26/08/2022.
//

import UIKit

import Foundation
import UIKit

class CardView: UIView {
  
  let actionButton = UIButton(type: .system);
  
  
  // Mark: Props
  @objc var actionTitle: String = "" {
    didSet {
      actionButton.setTitle(actionTitle, for: [])
    }
  }
  
  @objc var onPress: RCTBubblingEventBlock?;
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    setup();
    style(); // @TODO:
    layout(); // @TODO:
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder);
  }
  
  override var intrinsicContentSize: CGSize {
    return CGSize(width: 200.0, height: 200.0)
  }
}

extension CardView {
  
  func setup() {
    isUserInteractionEnabled = true;
    actionButton.addTarget(self, action: #selector(onActionPress), for: .touchUpInside)
  }
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false;
    backgroundColor = .systemRed;
    
    actionButton.translatesAutoresizingMaskIntoConstraints = false;
  }
  
  func layout() {
    
    addSubview(actionButton);
    
    NSLayoutConstraint.activate([
      actionButton.heightAnchor.constraint(equalToConstant: 64),
      actionButton.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
      trailingAnchor.constraint(equalToSystemSpacingAfter: actionButton.trailingAnchor, multiplier: 2),
      bottomAnchor.constraint(equalToSystemSpacingBelow: actionButton.bottomAnchor, multiplier: 2),
    ])
  }
}


// MARK: - Actions
extension CardView {
  @objc func onActionPress (sender: UIButton){
    print("ON ACTION")
    if let onPress = self.onPress {
      print("have js action")

      let passedParams: [String: Any] = [
        "param1": "String here",
        "param2": 2,
        "param3": true,
      ]

      onPress(passedParams);
    }
  }
  
//
//  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//    print("ON ACTION")
//    if let onPress = self.onPress {
//      print("have js action")
//
//      let passedParams: [String: Any] = [
//        "param1": "String here",
//        "param2": 2,
//        "param3": true,
//      ]
//
//      onPress(passedParams);
//    }
//  }
}
