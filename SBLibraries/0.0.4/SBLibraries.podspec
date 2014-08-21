Pod::Spec.new do |s|
  s.name         = "SBLibraries"
  s.version      = "0.0.4"
  s.summary      = "A meaningful description of of SBLibraries."

  s.homepage     = "http://github.com/jibjab"
  s.license      = {  :type => 'MIT',
                      :text =>  <<-LICENSE
                        Copyright 2014. Me.
                                LICENSE
                    }
  s.author       = { "Brad Roush" => "brad.roush@jibjab.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/jibjab/storybots-libraries.git", :tag => "0.0.4.1" }
  # s.source       = { :git => "https://github.com/jibjab/storybots-libraries.git"}
  s.requires_arc = true


  # s.default_subspec = 'Utilites'

  s.subspec 'Utilities' do |ss|
    ss.source_files = "Utilities/SBUtilities/*.{h,m}"
  end

  s.subspec 'CommonAssets' do |ss|
    ss.source_files = "CommonAssets/SBCommonAssets/Classes/*.{h,m}"
    ss.resources = "CommonAssets/SBCommonAssets/Resources/*.png"
    ss.dependency 'SBLibraries/Utilities'
  end

  s.subspec 'AccountAuthentication' do |ss|
    ss.source_files = "AccountAuthentication/SBAccountAuthentication/*.{h,m}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'Reachability', '~> 3.1'
  end

end
