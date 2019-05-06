//
//  Color.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import UIKit
import CoreGraphics
import func Darwin.round

public extension UIColor {
  
  convenience init(hex: String) {
    self.init(hex: hex, alpha: 1)
  }
  
  convenience init(hex: String, alpha: CGFloat) {
    var hexWithoutSymbol = hex
    if hexWithoutSymbol.hasPrefix("#") {
      hexWithoutSymbol.removeFirst(1)
    }
    
    let scanner = Scanner(string: hexWithoutSymbol)
    var hexInt: UInt32 = 0x0
    scanner.scanHexInt32(&hexInt)
    
    var r: UInt32!, g: UInt32!, b: UInt32!
    switch hexWithoutSymbol.count {
    case 3: // #RGB
      r = ((hexInt >> 4) & 0xf0 | (hexInt >> 8) & 0x0f)
      g = ((hexInt >> 0) & 0xf0 | (hexInt >> 4) & 0x0f)
      b = ((hexInt << 4) & 0xf0 | hexInt & 0x0f)
      
    case 6: // #RRGGBB
      r = (hexInt >> 16) & 0xff
      g = (hexInt >> 8) & 0xff
      b = hexInt & 0xff
      
    default:
      break
    }
    
    self.init(
      red: (CGFloat(r) / 255),
      green: (CGFloat(g) / 255),
      blue: (CGFloat(b) / 255),
      alpha: alpha)
  }
  
  // --
  @nonobjc static func hexa(_ value: UInt32) -> UIColor {
    let a = CGFloat((value & 0xFF000000) >> 24) / 255.0
    let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
    let g = CGFloat((value & 0xFF00) >> 8) / 255.0
    let b = CGFloat((value & 0xFF)) / 255.0
    
    return UIColor(red: r, green: g, blue: b, alpha: a)
  }
  
  @nonobjc static func hex(_ value: UInt32) -> UIColor {
    let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
    let g = CGFloat((value & 0xFF00) >> 8) / 255.0
    let b = CGFloat((value & 0xFF)) / 255.0
    
    return UIColor(red: r, green: g, blue: b, alpha: 1.0)
  }
  
  var hexString: String {
    guard let components = self.cgColor.components else { return "000000" }
    let r = components[0]
    let g = components[1]
    let b = components[2]
    return String(format: "%02X%02X%02X", Int(r * 255), Int(g * 255), Int(b * 255))
  }
  
}

extension UIColor {
  public static var inst_blue: UIColor {
    return UIColor(hex: Color.inst_blue)
  }
}
