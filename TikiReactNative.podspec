require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "TikiReactNative"
  s.module_name  = "TikiReactNative"
  s.version      = package['version']
  s.summary      = "A short description of TikiReactNative"
  s.license      = "MIT"

  s.authors      = { "Vuong Duc Lam" => "lam.vuong@tiki.vn" }
  s.homepage     = "https://github.com/tikivn/Tiki-React-Native-Release-iOS"
  
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.static_framework = true

  s.source       = { :git => "git@github.com:tikivn/Tiki-React-Native-Release-iOS.git", :branch => "#{package['branch']}" }
  s.source_files = "TikiReactNative", "**/*.{h,m,swift}"
  s.resource_bundles = {
    "TikiReactNative" => ["bundle/*"],
  }

  s.dependency "React"
  
  # Tiki modules
  s.dependency "TKNavigator"
  s.dependency "TKCommonAppKit"
  s.dependency "TKRemoteConfig"
  s.dependency "TKAppTracking"
end
