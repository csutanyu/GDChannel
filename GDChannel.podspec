#
# Be sure to run `pod lib lint GDChannel.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GDChannel"
  s.version          = "0.6.0"
  s.summary          = "iOS and Mac OS X client for realtime-channel."
  s.homepage         = "https://github.com/goodow/GDChannel"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Larry Tin" => "dev@goodow.com" }
  s.source           = { :git => "https://github.com/goodow/GDChannel.git", :tag => "v#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'

  s.source_files = 'Pod/Classes/**/*', 'Pod/Generated/**/*'
  s.requires_arc = ['Pod/Classes/**/*']

  s.dependency 'MQTTKit', '~> 0.1.0'
  s.dependency 'Mantle', '~> 2.0.6'
  s.dependency 'Protobuf', '~> 3.0'
end
