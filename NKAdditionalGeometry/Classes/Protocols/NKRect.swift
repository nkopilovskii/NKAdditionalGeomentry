//
//  NKRect.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 9/27/18.
//

import CoreGraphics

public protocol NKRect {
  
  /// Center of the rectangle in the parent system
  var center: CGPoint { set get }
  
  /// Square of the maximum size in the center of instance
  var centralSquare: CGRect { get }
  
  /// Radius of a circle inscribed in instance
  var incircleRadius: CGFloat { get }
  
  /// Radius of a circle circumscribed around instance
  var circumcircleRadius: CGFloat { get }
  
  /**
   Transformation of a rect from one coordinate system to another
   
   - Parameters:
      - initial: `CGRect` of coordinate system which contains current `CGRect` instance
      - destination: `CGRect` of coordinate system in which needs to get rect corresponding to the current `CGRect` instance
   
   - Returns: `CGRect` in `destination` coordinate system corresponding to current instance in `initial` coordinate system
   */
  func similar(from initial: CGRect, to destination: CGRect) -> CGRect
  
  /**
   Create a new rectangle by scaling the current instance's `size`
   
   - Parameters:
      - value: `CGFloat` scale factor
   - Returns: `CGRect` with instance's `origin` and instance's scaled `size`
  */
  func scaled(with value: CGFloat) -> CGRect
  
  /**
   Create a new rectangle by resizing the current instance's `size`
   
   - Parameters:
      - value: `CGFloat` value for increase instance's `size`
   - Returns: `CGRect` with instance's `origin` and instance's resized `size`
   */
  func changedSize(with value: CGFloat) -> CGRect
  
  /**
   The method calculates points at incircle radius distance from the instance's center with an equal radial pitch between them.
   In other words, the method divides the circle inscribed in the instance into equal segments
   
   - Parameters:
      - count: `Int` count of devide points
   - Returns: `[CGPoint]` array of equidistant points from the instance's center with an equal radial pitch between them
  */
  func incircleDevidePoints(_ count: Int) -> [CGPoint]
  
  /**
   The method calculates divide point at a given position in array of divide points of the circle inscribed in instance
  
   - Parameters:
      - index: `Int` number of divide point
      - count: `Int` count of devide points
   - Returns: `CGPoint` divide point at position `index` in array of divide points with size `count`
  */
  func incircleDevidePoint(for index: Int, in count: Int) -> CGPoint
  
  /**
   The method calculates points at circumcircle radius distance from the instance's center with an equal radial pitch between them.
   In other words, the method divides the circle circumscribed around the instance into equal segments
   
   - Parameters:
      - count: `Int` count of devide points
   - Returns: `[CGPoint]` array of equidistant points from the instance's center with an equal radial pitch between them
  */
  func circumcircleDevidePoints(_ count: Int) -> [CGPoint]
  
  /**
   The method calculates divide point at a given position in array of divide points of the circle circumscribed around instance
   
   - Parameters:
      - index: `Int` number of divide point
      - count: `Int` count of devide points
   - Returns: `CGPoint` divide point at position `index` in array of divide points with size `count`
   */
  func circumcircleDevidePoint(for index: Int, in count: Int) -> CGPoint
}
