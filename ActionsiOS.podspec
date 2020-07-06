Pod::Spec.new do |s|
    s.name             = "ActionsiOS"
    s.version          = "1.0.4"
    s.summary          = "Modulo de roteamento no iOS"
    s.homepage         = "https://github.com/1ucas/modularization-actions-ios"
    s.license          = 'Code is MIT.'
    s.author           = { "Manobray" => "manobray@gmail.com" }
    s.source           = { :git => "https://github.com/1ucas/modularization-actions-ios.git", :tag => s.version }
    s.social_media_url = 'https://twitter.com/manobray'
  
    s.platform     = :ios, '10.3'
    s.requires_arc = true
  
    s.swift_versions = ['5.1', '5.2']

    s.source_files = 'ModuloActionsiOS/*.swift'
  
    s.frameworks = 'UIKit'
  end