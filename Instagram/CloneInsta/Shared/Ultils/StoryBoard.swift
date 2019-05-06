//
//  StoryBoard.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import UIKit

public enum Storyboard: String {
  case Main
  case Login
  
  public func instantiate<VC: UIViewController>(type: VC.Type) -> VC {
    var storyboardId = ""
    
    let components = "\(type)".components(separatedBy: ".")
    
    if components.count > 0 {
      storyboardId = components[0]
    }
    
    let storyboad = UIStoryboard(name: self.rawValue, bundle: nil)
    let controller = storyboad.instantiateViewController(withIdentifier: storyboardId) as! VC
    
    return controller
  }
}

