#
# Be sure to run `pod lib lint LZPlotting.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

  s.name             = "LeBlue"
  s.version          = "1.0.0"
  s.summary          = "LeBlue."
  s.description      = <<-DESC
                        The LeBlue objective-c code.
                       DESC
  s.homepage         = "https://github.com/thoutbeckers/LeBlue"
  s.license          = 'Apache 2.0'
  s.author           = { "Jasper" => "jasper@splendo.nl" }
  s.source           = { :git => "https://github.com/japervp/LeBlue.git", :tag => s.version.to_s }
  s.ios.deployment_target = '8.3'

  s.xcconfig = {
   'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/J2ObjC-Framework/Distributive/frameworks"',
   'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/J2ObjC-Framework/Distributive/include"',
   'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'=> 'YES',
   'OTHER_LDFLAGS' => '-lObjC -lstdc++'
   }
  s.dependency 'J2ObjC-Framework'
  s.frameworks =  'Security', 'JRE','ProtobufRuntime'
  s.default_subspecs = 'LeBlue', 'CoreBluetooth'

  s.subspec "LeBlue" do |sp|
    sp.source_files = "objc/generated/*.{h,m}"
    sp.exclude_files = "objc/generated/*test.{h,m}"
    sp.requires_arc = false
  end

  s.subspec "CoreBluetooth" do |sp|
     sp.source_files = 'objc/CoreBluetooth'
     sp.requires_arc = true
     sp.dependency 'LeBlue/LeBlue'

  end

end

