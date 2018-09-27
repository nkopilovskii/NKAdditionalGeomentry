//
//  NKPoint.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 9/27/18.
//

import CoreGraphics

protocol NKPoint {
  /**
   Transformation of a point from one coordinate system to another
   
   - Parameters:
   - initial: `CGRect` of coordinate system which contains current `CGPoint` instance
   - destination: `CGRect` of coordinate system in which needs to get point corresponding to the current `CGPoint` instance
   
   - Returns: `CGPoint` in `destinationRect` coordinate system corresponding to current instance in `initialRect` coordinate system
   */
  func similar(from initial: CGRect, in destination: CGRect) -> CGPoint
  
  /**
   - Parameters:
   - point: `CGPoint` to which needs to calculate difference in values of the corresponding coordinates
   - Returns: `CGVector` difference in values of the corresponding coordinates
   */
  func diffence(with point: CGPoint) -> CGVector
  
  /**
   - Parameters:
   - difference: `CGVector` difference in values of the corresponding coordinates between two points
   - Returns: `CGPoint` by adding difference in values of the corresponding coordinates to current instance
   */
  func point(byAdding difference: CGVector) -> CGPoint
  
  /**
   - Parameters:
   - point: `CGPoint` to which needs to calculate the distance
   - Returns: `CGFloat` distance between current instance and `point`
   */
  func distance(to point: CGPoint) -> CGFloat
  
  //vertichle of angle is on current instance
  func angle(with p1: CGPoint, _ p2: CGPoint) -> CGFloat
  
  func point(on distance: CGFloat, with angle: CGFloat) -> CGPoint
}
