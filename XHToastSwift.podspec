Pod::Spec.new do |s|
  s.name         = "XHToastSwift"
  s.version      = "1.0.5"
  s.summary      = "简洁轻便提示工具,一行代码既可完成提示信息显示,支持自定义显示位置及停留时间."
  s.homepage     = "https://github.com/CoderZhuXH/XHToastSwift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Zhu Xiaohui" => "977950862@qq.com"}
  #s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/CoderZhuXH/XHToastSwift.git", :tag => s.version }
  s.source_files = "XHToastSwift", "*.{swift}"
  #s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
  
end
