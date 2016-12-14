Pod::Spec.new do |s|
  s.name             = 'FoobarLib'
  s.version          = '0.1.0'
  s.summary          = 'A not so short description of FoobarLib.'
  s.description      = 'This pod is so foobar that it foobars all the other foobars.'
  s.homepage         = 'https://github.com/azmeuk/FoobarLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'FooGuy' => 'guy@foo.bar' }
  s.source           = { :git => 'https://github.com/azmeuk/FoobarLib.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = [
    'FoobarLib/Classes/**/*',
  ]

  # Specify what libraries this depends on.
  s.libraries = [
    'c++', # FirebaseAnalytics.
    'icucore', # FirebaseDatabase.
    'sqlite3', # FirebaseAnalytics.
    'z', # FirebaseAnalytics.
  ]

  # Specify what frameworks this depends on.
  s.frameworks = [
    'AddressBook', # FirebaseAnalytics.
    'AdSupport', # FirebaseAnalytics.
    'CFNetwork', # FirebaseDatabase.
    'SafariServices', # FirebaseAnalytics.
    'Security', # FirebaseAnalytics, FirebaseAuth, FirebaseDatabase.
    'StoreKit', # FirebaseAnalytics.
    'SystemConfiguration', # FirebaseAnalytics, FirebaseDatabase.
  ]

  s.vendored_frameworks = [
    'FoobarLib/Frameworks/Firebase/Analytics/*.framework',
    'FoobarLib/Frameworks/Firebase/Auth/*.framework',
    'FoobarLib/Frameworks/Firebase/Database/*.framework',
    'FoobarLib/Frameworks/Firebase/Messaging/*.framework',
  ]

  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -ObjC',
#    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/**',
#    'USER_HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/FirebaseCore.framework/Modules',
#    'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/FirebaseCore.framework/Modules',
#    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
  }
end
