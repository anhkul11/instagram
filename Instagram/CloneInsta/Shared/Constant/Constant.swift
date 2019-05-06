//
//  Constant.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import Foundation
import UIKit
import SwiftyUserDefaults

// MARK: Shared AppDelegate
let UIAppDelegate = UIApplication.shared.delegate as! AppDelegate

// MARK: Config
public struct Config {
  
}
// MARK: User State Enum
public enum UserState: String, DefaultsSerializable {
  case firstInstall
  case logedIn
  case logedOut
}
// MARK: Image's name constants
public struct InstaImage {
  static let iconBack: String = "ic_nav_back"
  static let iconInbox: String = "ic_nav_inbox"
  static let iconOption: String = "ic_nav_option"
  static let iconTv: String = "ic_nav_tv"
  static let iconCamera: String = "ic_nav_camera"
}

// MARK: UIColor
public struct Color {
  static let inst_blue: String  = "#0080ff"
}
