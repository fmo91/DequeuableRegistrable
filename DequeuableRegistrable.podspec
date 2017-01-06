#
# Be sure to run `pod lib lint DequeuableRegistrable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DequeuableRegistrable'
  s.version          = '0.1.0'
  s.summary          = 'Safe and convenient registering and dequeuing of UITableViewCells and UICollectionViewCells without Strings.'

  s.description      = <<-DESC
DequeuableRegistrable is a couple of protocol extensions that allows registering and dequeuing UITableViewCells and UICollectionViewCells without using Strings and without doing any unsafe type casting.
                       DESC

  s.homepage         = 'https://github.com/fmo91/DequeuableRegistrable'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fernando Ortiz' => 'ortizfernandomartin@gmail.com' }
  s.source           = { :git => 'https://github.com/fmo91/DequeuableRegistrable.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://www.linkedin.com/in/fernando-mart%C3%ADn-ortiz-77649167'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DequeuableRegistrable/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DequeuableRegistrable' => ['DequeuableRegistrable/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
