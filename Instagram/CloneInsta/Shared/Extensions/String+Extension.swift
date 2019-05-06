//
//  String+Extension.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import Foundation

extension String {
  static func className(_ aClass: AnyClass) -> String {
    return NSStringFromClass(aClass).components(separatedBy: ".").last!
  }
  
  var length: Int {
    return self.count
  }
}
