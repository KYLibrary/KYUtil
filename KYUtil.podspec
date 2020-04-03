#
# Be sure to run `pod lib lint KYUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KYUtil'
  s.version          = '0.1.0'
  s.summary          = 'A short description of KYUtil.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/KYLibrary/KYUtil'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kyleboy' => 'kyleboy@126.com' }
  s.source           = { :git => 'https://github.com/KYLibrary/KYUtil.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.default_subspec         = "KYPathUtil"

  s.ios.deployment_target = '9.0'

  # s.source_files = 'KYUtil/*.{h,m}'
  
  # s.resource_bundles = {
  #   'KYUtil' => ['KYUtil/Assets/*.png']
  # }
  
  s.subspec "KYPathUtil" do |ss|
    ss.source_files         = "KYUtil/KYPathUtil/**/*.{h,m}"
  end
  
  s.subspec "KYCategories" do |ss|
    ss.dependency 'KYUtil/KYPathUtil'
    ss.source_files         = "KYUtil/KYCategories/**/*.{h,m}"
  end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
