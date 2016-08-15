Pod::Spec.new do |s|
  s.name         = "XHToastSwift"
  s.version      = "1.0.2"
  s.summary      = "简洁轻便提示工具,一行代码既可完成提示信息显示."
  s.homepage     = "https://github.com/CoderZhuXH/XHToastSwift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Zhu Xiaohui" => "977950862@qq.com"}
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/CoderZhuXH/XHToastSwift.git", :tag => s.version }
  s.source_files = "XHToastSwift", "*.{swift}"
  s.requires_arc = true
  
end
