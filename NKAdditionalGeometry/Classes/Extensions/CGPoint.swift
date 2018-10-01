//
//  CGPoint.swift
//  NKAdditionalGeometry
//
//  Created by Nick Kopilovskii on 9/27/18.
//

import CoreGraphics

extension CGPoint: NKPoint {
  
  public func similar(from initial: CGRect, in destination: CGRect) -> CGPoint {
    let newX = x * destination.width / initial.width
    let newY = y * destination.height / initial.height
    return CGPoint(x: newX, y: newY)
  }
  
  public func diffence(with point: CGPoint) -> CGVector {
    return CGVector(dx: x - point.x, dy: y - point.y)
  }
  
  public func point(byAdding difference: CGVector) -> CGPoint {
    return CGPoint(x: x + difference.dx, y: y + difference.dy)
  }
  
  public func distance(to point: CGPoint) -> CGFloat {
    return diffence(with: point).length
  }
  
  func angle(with p1: CGPoint, _ p2: CGPoint) -> CGFloat {
    let a = distance(to: p1)
    let b = distance(to: p2)
    let c = p1.distance(to: p2)
    
    return acos((pow(a,2) + pow(b,2) - pow(c,2))/(2 * a * b))
  }
  
  func devidePoints(count: Int, for radius: CGFloat) -> [CGPoint] {
    guard count > 0 else { return [CGPoint]() }
    
    var points = [CGPoint]()
    let singleAngle = 2 * .pi / CGFloat(count)
    (1...count).forEach { points.append(self.point(on: radius, with: singleAngle * CGFloat($0))) }
    
    return points
  }
  
  func point(on distance: CGFloat, with angle: CGFloat) -> CGPoint {
    return CGPoint(x: x + distance * cos(angle - .pi / 2), y: y + distance * sin(angle - .pi / 2))
  }

}
