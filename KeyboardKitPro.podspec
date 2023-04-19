# This podspec is only used to create versions with Fastlane.

Pod::Spec.new do |s|
  s.name             = 'KeyboardKitPro'
  s.version          = '7.4.0'
  s.swift_versions   = ['5.6']
  s.summary          = 'KeyboardKit Pro adds additional functionality to KeyboardKit.'

  s.description      = <<-DESC
KeyboardKit Pro adds additional functionality to KeyboardKit.
                       DESC

  s.homepage         = 'https://github.com/danielsaidi/KeyboardKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daniel Saidi' => 'daniel.saidi@gmail.com' }
  s.source           = { :git => 'https://github.com/danielsaidi/KeyboardKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielsaidi'

  s.swift_version = '5.6'
  
  s.ios.deployment_target = '13.0'
  s.macos.deployment_target = '11.0'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
end
