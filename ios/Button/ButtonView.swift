//
//  ButtonView.swift
//  tutorial_native_components
//
//  Created by Owais Kreifeh on 27/08/2022.
//

import Foundation
import UIKit

class ButtonView: UIView {
  
  // UI Elements
  let label = UILabel();
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    
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

extension ButtonView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false;
  }
  
  func layout() {
    
  }
  
}
