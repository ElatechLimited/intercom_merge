#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint intercom_objc.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'intercom_objc'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  
  s.preserve_paths = 'MIntercom.xcframework/**/*'
  s.static_framework = true
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework MIntercom ' }
  s.vendored_frameworks = 'MIntercom.xcframework'
  
  
  #s.dependency 'Intercom'
  #s.static_framework = true
  #s.dependency 'Intercom', '~> 6.0.0'
  #s.xcconfig = { 'OTHER_LDFLAGS' => '-framework Intercom' }
  
  
end
