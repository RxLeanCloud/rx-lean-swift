
Pod::Spec.new do |s|

  s.name         = "RxLeanCloud"
  s.version      = "0.0.1"
  s.summary      = "LeanCloud Swift sdk based on RxSwift for iOS"
  s.homepage     = "https://github.com/RxLeanCloud/rx-lean-swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "WuJun" => "wujun19890209@gmail.com" }
  s.platform     = :ios,"10.0"
  s.source       = { :git => "https://github.com/RxLeanCloud/rx-lean-swift.git", :tag => "{s.version}" }
  s.source_files  = 'src/RxLeanCloudSwift/**/*.swift'

  s.dependency 'RxSwift',    '~> 3.0'
  s.dependency 'RxCocoa',    '~> 3.0'
  s.dependency 'RxAlamofire' '~> 3.0.2'
  s.dependency 'Alamofire', '> 4.4'
  s.dependency 'Starscream', '~> 2.0.3'

end