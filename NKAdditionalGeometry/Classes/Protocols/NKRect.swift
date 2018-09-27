//
//  NKRect.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 9/27/18.
//

import CoreGraphics

protocol NKRect {
  
  var center: CGPoint { set get }
  
  var centralSquare: CGRect { get }
  
  var incircleRadius: CGFloat { get }
  
  var circumcircleRadius: CGFloat { get }
  
  /**
   Transformation of a rect from one coordinate system to another
   
   - Parameters:
   - initial: `CGRect` of coordinate system which contains current `CGRect` instance
   - destination: `CGRect` of coordinate system in which needs to get rect corresponding to the current `CGRect` instance
   
   - Returns: `CGRect` in `destinationRect` coordinate system corresponding to current instance in `initialRect` coordinate system
   */
  
  func similar(from initial: CGRect, to destination: CGRect) -> CGRect
  
  
  func scaled(with value: CGFloat) -> CGRect
  
  func changedSize(with value: CGFloat) -> CGRect
  
  func new(with size: CGSize) -> CGRect
  
  func incircleDevidePoints(_ count: UInt) -> [CGPoint]
  
  func incircleDevidePoint(for index: UInt, in count: UInt) -> CGPoint
}
