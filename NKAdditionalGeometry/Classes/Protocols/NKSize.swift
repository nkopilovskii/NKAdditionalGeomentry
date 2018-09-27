//
//  NKSize.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 9/27/18.
//

import CoreGraphics

public protocol NKSize {
  
  func scaleToMax(in size: CGSize) -> CGSize
  
  func similar(from initial: CGSize, to destination: CGSize) -> CGSize
  
}
