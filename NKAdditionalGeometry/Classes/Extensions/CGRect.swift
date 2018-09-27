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
    return sqrt(pow(origin.x - center.x, 2) + pow(origin.y - center.y, 2))
  }
  
  public func similar(from initial: CGRect, to destination: CGRect) -> CGRect {
    let newOrigin = origin.similar(from: initial, in: destination)
    let newSize = size.similar(from: initial.size, to: destination.size)
    
    return CGRect(origin: newOrigin, size: newSize)
  }
  
  
  func scaled(with value: CGFloat) -> CGRect {
    let nSize = CGSize(width: width * value, height: width * value)
    return new(with: nSize)
  }
  
  func changedSize(with value: CGFloat) -> CGRect {
    let nSize = CGSize(width: width + value, height: height + value)
    return new(with: nSize)
  }
  
  func new(with size: CGSize) -> CGRect {
    var nRect = CGRect(origin: .zero, size: size)
    nRect.center = center
    return nRect
  }
  
  func incircleDevidePoints(_ count: UInt) -> [CGPoint] {
    guard count > 0 else { return [CGPoint]() }
    
    var points = [CGPoint]()
    let radius = incircleRadius
    let singleAngle = 2 * .pi / CGFloat(count)
    let center = self.center
    
    (1...count).forEach { points.append(center.point(on: radius, with: singleAngle * CGFloat($0))) }
    
    return points
  }
  
  func incircleDevidePoint(for index: UInt, in count: UInt) -> CGPoint {
    return center.point(on: incircleRadius, with: 2 * .pi * CGFloat(index) / CGFloat(count))
  }
  
}
