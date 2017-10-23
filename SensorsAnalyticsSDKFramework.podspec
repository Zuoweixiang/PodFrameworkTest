Pod::Spec.new do |s|
  s.name         = "SensorsAnalyticsSDKFramework"
  s.version      = "0.0.2"
  s.summary      = "The offical iOS SDK of Sensors Analytics."
  s.homepage     = "http://www.sensorsdata.cn"
  s.source       = { :git => 'https://github.com/Zuoweixiang/PodFrameworkTest.git', :tag => "0.0.2" } 
  s.license = { :type => "Apache License, Version 2.0" }
  s.author = { "Zuoweixiang" => "xiangzuowei@sensorsdata.cn" }
  s.platform = :ios, "7.0"
  s.default_subspec = 'core'
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'QuartzCore'
  s.libraries = 'icucore', 'sqlite3', 'z'
  s.vendored_frameworks = 'SensorsdataAnalytics.framework'

  s.subspec 'core' do |c|
	c.source_files  = "PodFrameworkTest/SensorsAnalyticsSDK", "PodFrameworkTest/SensorsAnalyticsSDK/*.{h,m}"
	c.public_header_files = "PodFrameworkTest/SensorsAnalyticsSDK/SensorsAnalyticsSDK.h"
  end

  end
