//
//  UserDefault.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import Foundation
import SwiftyUserDefaults

extension DefaultsKeys {
  static let userState = DefaultsKey<UserState?>("userState")
  static let userName = DefaultsKey<String?>("userName")
  static let passWord = DefaultsKey<String?>("password")
}
