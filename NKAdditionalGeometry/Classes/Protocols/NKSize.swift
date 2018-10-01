//
//  NKSize.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 9/27/18.
//

import CoreGraphics

public protocol NKSize {
  
  /**
   The method calculates the maximum size that can be accommodated in the given, with the remaining aspect ratio of the instance
   
   - Parameters:
      - size: `CGSize` in which it is necessary to place a new size
   - Returns: `CGSize` that can be accommodated in the `size`
  */
  func scaleToMax(in size: CGSize) -> CGSize
  
  /**
   Еhe method calculates the size corresponding to the instance, observing the ratios of the corresponding parameter given sizes
   
   - Parameters:
       - initial: `CGSize` in the coordinate system of which there is instance
       - destination: `CGSize` n the coordinate system of which needs to transfer the current object
   - Returns: `CGSize` corresponding to the instance, observing the ratios of the corresponding parameter given sizes
   */
  func similar(from initial: CGSize, to destination: CGSize) -> CGSize
  
}
