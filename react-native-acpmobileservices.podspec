require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-acpmobileservices"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-acpmobileservices
                   DESC
  s.homepage     = "https://github.com/Foursum/react-native-acpmobileservices"
  s.license      = "MIT"
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/Foursum/react-native-acpmobileservices.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

