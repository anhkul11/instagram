//
//  UIKit+Extension.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import Foundation
import UIKit

// MARK: UIButton
extension UIButton {
  func setStyleSquareButton() {
    self.layer.cornerRadius = 4
    self.setTitleColor(.white, for: .normal)
    self.backgroundColor = UIColor.inst_blue
  }
}
