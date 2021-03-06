#
# Be sure to run `pod lib lint NKAdditionalGeometry.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NKAdditionalGeometry'
  s.version          = '0.1.0'
  s.summary          = 'Extensions for CoreGraphics types'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The library is represented by a set of protocols and extensions of the CoreGraphics framework, which automate some geometric calculations.
                       DESC

  s.homepage         = 'https://github.com/nkopilovskii/NKAdditionalGeometry'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nkopilovskii' => 'nkopilovskii@gmail.com' }
  s.source           = { :git => 'https://github.com/nkopilovskii/NKAdditionalGeometry.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mkopilovskii'

  s.ios.deployment_target = '10.0'
  s.swift_version  = '4.2'
  s.source_files = 'NKAdditionalGeometry/Classes/**/*.swift'
  # s.resource_bundles = {
  #   'NKAdditionalGeometry' => ['NKAdditionalGeometry/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
