import Foundation
import UIKit

class ProfileView: UIView {
  
    @IBOutlet weak var usernameLabel: UILabel!
    
    @objc var username: String = "" {
        didSet {
          print("did set to", username)
            usernameLabel?.text = username;
        }
    }
    
    override init(frame: CGRect) {
    super.init(frame: frame);
    commonInit()
    style(); // @TODO:
    layout(); // @TODO:
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder);
    commonInit()
  }
  
  func commonInit(){
      Bundle(for: ProfileView.self)
          .loadNibNamed(String(describing: ProfileView.self), owner: self);
  }
  
  override var intrinsicContentSize: CGSize {
      return CGSize(width: UIView.noIntrinsicMetric, height: 144)
  }
  
}

extension ProfileView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false;
  }
  
  func layout() {
    
  }
  
}
