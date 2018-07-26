Pod::Spec.new do |s|
  s.name     = 'SMF-CocoaLumberjack'
  s.module_name = 'CocoaLumberjack'
  s.version  = '3.3.0'
  s.license  = 'BSD'
  s.summary  = 'A fast & simple, yet powerful & flexible logging framework for Mac and iOS.'
  s.homepage = 'https://github.com/smartmobilefactory/SMF-CocoaLumberjack'
  s.author   = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.source   = { :git => 'https://github.com/smartmobilefactory/SMF-CocoaLumberjack.git', :tag => "releases/#{s.version}" }

  s.description = 'It is similar in concept to other popular logging frameworks such as log4j, '   \
                  'yet is designed specifically for objective-c, and takes advantage of features ' \
                  'such as multi-threading, grand central dispatch (if available), lockless '      \
                  'atomic operations, and the dynamic nature of the objective-c runtime.'

  s.requires_arc   = true

  s.preserve_paths = 'Framework/Lumberjack/CocoaLumberjack.modulemap'
  s.module_map = 'Framework/Lumberjack/CocoaLumberjack.modulemap'
  # s.source_files = 'Classes/CocoaLumberjack.h', 'Classes/DD*.h'
  # s.public_header_files  = 'Classes/CocoaLumberjack.h', 'Classes/DD*.h'

  s.ios.deployment_target     = '5.0'
  s.osx.deployment_target     = '10.7'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target    = '9.0'

  s.ios.vendored_frameworks = 'Releases/iOS/CocoaLumberjack.framework'
  s.osx.vendored_frameworks = 'Releases/Mac/CocoaLumberjack.framework'
  s.tvos.vendored_frameworks = 'Releases/tvOS/CocoaLumberjack.framework'
  s.watchos.vendored_frameworks = 'Releases/watchOS/CocoaLumberjack.framework'

  s.static_framework = true

end
