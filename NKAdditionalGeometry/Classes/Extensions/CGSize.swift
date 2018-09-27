//
//  CGSize.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 9/27/18.
//

import CoreGraphics

extension CGSize: NKSize {
  public func scaleToMax(in size: CGSize) -> CGSize {
    var newWidth: CGFloat
    var newHeight: CGFloat
    
    if width > height {
      newHeight = size.height
      newWidth = newHeight * width / height
    } else if width < height {
      newWidth = size.width
      newHeight = newWidth * height / width
    } else {
      newHeight = max(size.width, size.height)
      newWidth = newHeight
    }
    
    if newHeight < size.height {
      newHeight = size.height
      newWidth = newHeight * width / height
    } else if newWidth < size.width {
      newWidth = size.width
      newHeight = newWidth * height / width
    }
    return CGSize(width: newWidth, height: newHeight)
  }
  
  public func similar(from initial: CGSize, to destination: CGSize) -> CGSize {
    let newWeight = width * destination.width / initial.width
    let newHeight = height * destination.height / initial.height
    
    return CGSize(width: newWeight, height: newHeight)
  }
  
  
}
