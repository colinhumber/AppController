#
# Be sure to run `pod lib lint AppController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AppController"
  s.version          = "0.3.1"
  s.summary          = "A clean and simple way to transition between a login interface and a main interface in iOS apps."

  s.description      = <<-DESC
                       Many iOS applications need to implement login functionality. This project aims to provide a clean and simple architecture for doing this. The AppController is object that manages the login and main interfaces of your application.
                       DESC

  s.homepage         = "https://github.com/cgossain/AppController"
  s.license          = 'MIT'
  s.author           = { "Christian Gossain" => "cgossain@gmail.com" }
  s.source           = { :git => "https://github.com/cgossain/AppController.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.swift'
end
