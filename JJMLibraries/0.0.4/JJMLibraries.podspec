Pod::Spec.new do |s|
  s.name         = "JJMLibraries"
  s.version      = "0.0.4"
  s.summary      = "A meaningful description of JJMLibraries"
  s.license      = 'MIT'
  s.homepage = "https://github.com/jibjab/jibjab-messages-libraries"
  s.author       = { "Gustavo" => "gustavo@jibjab.net" }
  s.platform     = :ios, '6.0'
  s.source       = {  :git => "https://github.com/jibjab/jibjab-messages-libraries.git", 
                      :tag => "0.0.4", 
                      :submodules => true }
  s.requires_arc = true
  

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.dependency 'JJMLibraries/Database'
  end

  s.subspec 'Account' do |ss|
    ss.source_files = "JJMAccounts/JJMAccounts/Sources/**/*.{h,m}"
    ss.dependency 'NXOAuth2Client'
  end

  s.subspec 'Database' do |ss|
    ss.source_files = "JJMDatabase/JJMDatabase/Sources/**/*.{h,m}"
    ss.dependency 'JJMLibraries/Account'
    ss.dependency 'MagicalRecord'
  end

end
