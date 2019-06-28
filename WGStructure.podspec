#
# Be sure to run `pod lib lint WGStructure.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WGStructure'
  s.version          = '0.1.0'
  s.summary          = 'WGStructure is a utility class that simply implements the queue and priority queue for objective-c.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
queue and priority queues are implemented using arrays provided by the objective-c language itself, providing no thread-safe access. When used in multiple threads, developers need to implement the synchronization mechanism themselves.
                       DESC

  s.homepage         = 'https://github.com/gerrywg/WGStructure'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gerrywg' => 'chwanggang@msn.com' }
  s.source           = { :git => 'https://github.com/gerrywg/WGStructure.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '6.0'

  s.source_files = 'WGStructure/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WGStructure' => ['WGStructure/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
