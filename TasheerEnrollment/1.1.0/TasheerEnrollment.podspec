
Pod::Spec.new do |s|
  s.name         = 'TasheerEnrollment'
  s.version      = '1.1.0'
  s.summary      = 'TasheerEnrollment Framework, Bio.'
  s.description  = 'Precompiled XCFramework for enrollment workflows.'
  s.homepage     = 'https://www.tasheer.com/'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Tasheer Team' => 'aelabd@tasheer.com' }

  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'

  # Repacked ZIP URL + new checksum
s.source = {
  :http   => 'https://github.com/tasheercom/tasheer-podspecs/releases/download/v1.1.0/TasheerEnrollmentSDK-1.1.0.zip',
  :type   => 'zip',
  :sha256 => 'e9144064e587ffb6a0ea178ca2818039fee1c065db42c4df2a139977628553c8'
}

# If any vendored binary lacks arm64 simulator slice
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


  # Vendored binaries 
  s.vendored_frameworks = [
    '**/TasheerEnrollment.xcframework',
    '**/Frameworks/aaPrintScannerLic.framework',
    '**/Frameworks/aaPrintScannerFw.framework'
  ]

  # Resource bundle (privacy manifest, assets, localization, licenses)
  # s.resource_bundles = {
  #   'TasheerEnrollmentResources' => ['Resources/TasheerEnrollmentResources.bundle']
  # }
  s.resources = [
    '**/Resources/TasheerEnrollmentResources.bundle'
  ]

  # External CocoaPods dependencies
  s.dependency 'dot-face-passive-liveness', '3.8.2'
  s.dependency 'DocumentReader', '7.4.3826'
  s.dependency 'DocumentReaderOCRRFID', '7.4.9827'

  # Apple system frameworks your SDK uses at runtime
  s.ios.frameworks = ['UIKit', 'AVFoundation', 'Foundation']


# If any vendored binary lacks arm64 simulator slice
# s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
# s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
