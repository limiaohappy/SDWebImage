#
# Be sure to run `pod lib lint LMWebImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

  s.name             = 'LMWebImage'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LMWebImage.简介'

  s.description      = <<-DESC
TODO: Add long description of the pod here.  这里是详细的描述
                       DESC

  s.homepage         = 'https://github.com/limiaohappy/SDWebImage.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lm375701847@vip.qq.com' => 'lm5641599@gmail.com' }
  s.source           = { :git => 'https://github.com/limiaohappy/SDWebImage.git', :tag => s.version.to_s }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LMWebImage/Classes/**/*.h'
  
  # s.resource_bundles = {
  #   'LMWebImage' => ['LMWebImage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.framework = 'UIKit'
  s.dependency "SDWebImage"

end
