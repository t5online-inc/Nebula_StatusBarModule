Pod::Spec.new do |spec|
  spec.name         = 'StatusBarModule'
  spec.version      = '1.0.0'
  spec.license      = { :type => 't5online' }
  spec.homepage     = 'https://github.com/t5online-inc/StatusBarModule'
  spec.authors      = { 't5online' => 'yslee@t5online.com' }
  spec.summary      = 'StatusBarModule(Nebula)'
  spec.source       = { :git => 'https://github.com/t5online-inc/StatusBarModule.git' }
  spec.source_files = 'ios/StatusBarModule/Shared/**/*.{h,m}'
  spec.framework    = 'Foundation', 'UIKit'
end
