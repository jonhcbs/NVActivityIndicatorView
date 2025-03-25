Pod::Spec.new do |s|
  s.name              = 'NVActivityIndicatorView_CHO'
  s.version           = '0.1.4'
  s.summary           = 'A collection of awesome loading animations'
  s.homepage          = 'https://github.com/maojoh/NVActivityIndicatorView'
  s.screenshot        = 'https://raw.githubusercontent.com/maojoh/NVActivityIndicatorView/master/Demo.gif'
  s.license           = { type: 'MIT', file: 'LICENSE' }
  s.author            = { 'lingzhao.mao' => 'lingzhao.mao@chowbus.com' }
  s.social_media_url  = 'http://twitter.com/ninjaprox'
  s.documentation_url = 'https://nvactivityindicatorview.vinhis.me'

  s.ios.deployment_target  = '12.0'
  s.tvos.deployment_target = '12.0'
  s.swift_version          = '5.0'

  s.source = { git: 'https://github.com/maojoh/NVActivityIndicatorView.git',
               tag: s.version }

  s.subspec 'Base' do |ss|
    ss.source_files = 'Sources/Base/**/*.swift'
  end
  s.subspec 'Extended' do |ss|
    ss.dependency 'NVActivityIndicatorView/Base'
    ss.source_files = 'Sources/Extended/**/*.swift'
  end
  s.default_subspec = 'Base'

  s.frameworks = 'UIKit', 'QuartzCore'
end
