Pod::Spec.new do |s|
  s.name             = 'ABCustomView'
  s.version          = '0.1.0'
  s.summary          = 'Handy UIView subclasses'
 
  s.description      = <<-DESC
  Manual setup and update for UIViews
                       DESC
 
  s.homepage         = 'https://github.com/alexburtnik/ABCustomView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'alexburtnik' => 'alexburtnik@gmail.com' }
  s.source           = { :git => 'https://github.com/alexburtnik/ABCustomView.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '8.0'
  s.source_files = 'Source/*.swift'
 
end