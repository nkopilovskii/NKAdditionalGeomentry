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
  
  /**
   - Parameters:
      - p1: `CGPoint` to which needs to calculate the distance
      - p2: `CGPoint` to which needs to calculate the distance
   - Returns: `CGFloat` angle between segments `instance-p1` and `instance-p2`
   */
  func angle(with p1: CGPoint, _ p2: CGPoint) -> CGFloat
  
  /**
   The method calculates equidistant points from the instance with an equal radial pitch between them.
   In other words, the method divides the circle into equal segments
   
   - Parameters:
      - count: `Int` count of devide points
      - radius: `CGFloat` remoteness of computed points from the instance
   - Returns: `[CGPoint]` array of equidistant points from the instance with an equal radial pitch between them
   */
  func devidePoints(count: Int, for radius: CGFloat) -> [CGPoint]
  
  /**
   The method calculates `CGPoint` at a given distance with the angle of deviation from the axis Ox
   - Parameters:
      - count: `Int` count of devide points
      - angle: `CGFloat` angle based on instance
   - Returns: `[CGPoint]` array of equidistant points from the instance with an equal radial pitch between them
   */
  func point(on distance: CGFloat, with angle: CGFloat) -> CGPoint
}
