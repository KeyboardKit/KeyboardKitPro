# This podspec is only used to create versions with Fastlane.

Pod::Spec.new do |s|
  s.name             = 'KeyboardKitPro'
  s.version          = '5.8.1'
  s.swift_versions   = ['5.3']
  s.summary          = 'KeyboardKit Pro adds additional functionality to KeyboardKit.'

  s.description      = <<-DESC
KeyboardKit Pro adds additional functionality to KeyboardKit.
                       DESC

  s.homepage         = 'https://github.com/danielsaidi/KeyboardKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daniel Saidi' => 'daniel.saidi@gmail.com' }
  s.source           = { :git => 'https://github.com/danielsaidi/KeyboardKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielsaidi'

  s.swift_version = '5.3'
  s.ios.deployment_target = '13.0'
end
