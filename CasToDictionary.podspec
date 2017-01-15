Pod::Spec.new do |s|
s.name             = 'CasToDictionary'
s.version          = '0.0.6'
s.summary          = 'Easy Cast to dictionary from a object.'

s.description      = <<-DESC
is a baby library please give me more advice for let this baby grow!
DESC

s.homepage         = 'https://github.com/ZackTvZ/CasToDictionary'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'zacktvz' => 'zacktvz@hotmail.my' }
s.source           = { :git => 'https://github.com/ZackTvZ/CasToDictionary.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.2'
s.source_files = 'CasToDictionary/*'

end
