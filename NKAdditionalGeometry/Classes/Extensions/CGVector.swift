//
//  CGVector.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 10/1/18.
//

import CoreGraphics

extension CGVector: NKVector {
  
  public var length: CGFloat {
    return sqrt(pow(dx, 2) + pow(dy, 2))
  }
  
}
