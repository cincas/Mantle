Pod::Spec.new do |s|
  s.name     = 'Mantle'
  s.version  = '2.0.3'
  s.license  = 'MIT'
  s.summary  = 'Model framework for Cocoa and Cocoa Touch.'
  s.homepage = 'https://github.com/cincas/Mantle'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/cincas/Mantle.git', :tag => s.version, :submodules => true }
  s.requires_arc = true

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.public_header_files = 'Mantle/*.h'
  s.source_files = 'Mantle'
  s.ios.frameworks = 'Foundation'

  s.subspec 'extobjc' do |ss|
    ss.source_files = 'Mantle/extobjc'
    ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.private_header_files = 'Mantle/extobjc/*.h'
  end
end
