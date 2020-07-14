require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']

  s.homepage     = "https://github.com/GitXwj/react-native-local-barcode-recognizer"
  s.license      = "MIT"

  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/GitXwj/react-native-local-barcode-recognizer.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"


  s.dependency "React"

end

