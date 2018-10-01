//
//  CGRect.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 9/27/18.
//

import CoreGraphics

extension CGRect: NKRect {
  
  public var center: CGPoint {
    get {
      return CGPoint(x: origin.x + width / 2, y: origin.y + height / 2)
    }
    set {
      origin = CGPoint(x: newValue.x - width / 2, y: newValue.y - height / 2)
    }
  }
  
  public  var centralSquare: CGRect {
    var sRect = CGRect(origin: CGPoint.zero, size: CGSize(width: min(width, height), height: min(width, height)))
    sRect.center = center
    return sRect
  }
  
  public var incircleRadius: CGFloat {
    return min(width, height) / 2
  }
  
  public var circumcircleRadius: CGFloat {
    return origin.distance(to: center)
  }
  
  public func similar(from initial: CGRect, to destination: CGRect) -> CGRect {
    let newOrigin = origin.similar(from: initial, in: destination)
    let newSize = size.similar(from: initial.size, to: destination.size)
    
    return CGRect(origin: newOrigin, size: newSize)
  }
  
  func scaled(with value: CGFloat) -> CGRect {
    let nSize = CGSize(width: width * value, height: width * value)
    return CGRect(origin: origin, size: nSize)
  }
  
  func changedSize(with value: CGFloat) -> CGRect {
    let nSize = CGSize(width: width + value, height: height + value)
    return CGRect(origin: origin, size: nSize)
  }
  
  func incircleDevidePoints(_ count: Int) -> [CGPoint] {
    return center.devidePoints(count: count, for: incircleRadius)
  }
  
  func incircleDevidePoint(for index: Int, in count: Int) -> CGPoint {
    return center.point(on: incircleRadius, with: 2 * .pi * CGFloat(index) / CGFloat(count))
  }
 
  
  func circumcircleDevidePoints(_ count: Int) -> [CGPoint] {
    return center.devidePoints(count: count, for: circumcircleRadius)
  }
  
  func circumcircleDevidePoint(for index: Int, in count: Int) -> CGPoint {
    return center.point(on: incircleRadius, with: 2 * .pi * CGFloat(index) / CGFloat(count))
  }
  
}
