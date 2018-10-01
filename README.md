# NKAdditionalGeometry

![Swift](https://img.shields.io/badge/Swift-4.2-red.svg)  [![Version](https://img.shields.io/cocoapods/v/NKAdditionalGeometry.svg?style=flat)](https://cocoapods.org/pods/NKAdditionalGeometry) [![License](https://img.shields.io/cocoapods/l/NKAdditionalGeometry.svg?style=flat)](https://cocoapods.org/pods/NKAdditionalGeometry) [![Platform](https://img.shields.io/cocoapods/p/NKAdditionalGeometry.svg?style=flat)](https://cocoapods.org/pods/NKAdditionalGeometry)


## Description
The library is represented by a set of protocols and extensions of the CoreGraphics framework, which automate some geometric calculations.

## Interface
All the protocols described have a realization in extensions of the corresponding types

### Protocol `NKPoint`
```swift
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
```

### Protocol `NKVector`
```swift
/**
  Module (length) of the vector
*/
var length: CGFloat { get }
```

### Protocol `NKSize`
```swift
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
      - destination: `CGSize` in the coordinate system of which needs to transfer the current object
  - Returns: `CGSize` corresponding to the instance, observing the ratios of the corresponding parameter given sizes
*/
func similar(from initial: CGSize, to destination: CGSize) -> CGSize
```

### Protocol `NKRect`
```swift
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
```

*Visual representation:*


## Installation

NKAdditionalGeometry is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NKAdditionalGeometry'
```

## Requirements
iOS 10.0

Xcode 9

Swift 4.0

## Author

nkopilovskii, nkopilovskii@gmail.com

## License

NKAdditionalGeometry is available under the MIT license. See the LICENSE file for more info.
