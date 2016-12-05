#
# Be sure to run `pod lib lint FoobarLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FoobarLib'
  s.version          = '0.1.0'
  s.summary          = 'A not so short description of FoobarLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/azmeuk/FoobarLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'FooGuy' => 'guy@foo.bar' }
  s.source           = { :git => 'https://github.com/azmeuk/FoobarLib.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'FoobarLib/Classes/**/*'
  s.vendored_frameworks = [
    'Frameworks/Firebase/Analytics/FirebaseCore.framework',
    'Frameworks/Firebase/Analytics/FirebaseAnalytics.framework',
    'Frameworks/Firebase/Analytics/FirebaseInstanceID.framework',
    'Frameworks/Firebase/Analytics/GoogleInterchangeUtilities.framework',
    'Frameworks/Firebase/Analytics/GoogleSymbolUtilities.framework',
    'Frameworks/Firebase/Analytics/GoogleToolboxForMac.framework',
    'Frameworks/Firebase/Messaging/FirebaseMessaging.framework',
  ]

  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -ObjC',
  }
end
