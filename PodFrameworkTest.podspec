Pod::Spec.new do |s|
  s.name         = "PodFrameworkTest"
  s.version      = "0.0.5"
  s.summary      = "The offical iOS SDK of Sensors Analytics."
  s.homepage     = "https://github.com/Zuoweixiang/PodFrameworkTest/blob/master/README.md"
  s.source       = { :git => 'https://github.com/Zuoweixiang/PodFrameworkTest.git', :tag => "0.0.5" } 
  s.license = { :type => "Apache License, Version 2.0" }
  s.author = { "Zuoweixiang" => "xiangzuowei@sensorsdata.cn" }
  s.platform = :ios, "7.0"
  s.default_subspec = 'core'
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'QuartzCore'
  s.libraries = 'icucore', 'sqlite3', 'z'

  s.ios.deployment_target = '8.0' 
  s.requires_arc = true 
  #s.resources = ["SensorsAnalyticsSDK/*.json"]
  s.resource_bundles = {
   'ResBundle' => ['SensorsAnalyticsSDK/*.json']
  }
  s.subspec 'core' do |c|
	c.source_files  = "SensorsAnalyticsSDK", "SensorsAnalyticsSDK/*.{h,m}"
	c.public_header_files = "SensorsAnalyticsSDK/SensorsAnalyticsSDK.h"
   end
  end
