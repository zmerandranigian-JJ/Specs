Pod::Spec.new do |s|
  s.name         = "SBLibraries"
  s.version      = "0.0.2"
  s.summary      = "A meaningful description of of SBLibraries."

  s.homepage     = "https://github.com/jibjab/storybots-libraries"
  s.license      = "MIT"
  s.author       = { "Brad Roush" => "brad.roush@jibjab.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/jibjab/storybots-libraries.git", :tag => "0.0.2.1" }
  s.requires_arc = true


  # s.default_subspec = 'Utilites'

  s.subspec 'Utilities' do |cs|
    cs.source_files = "SBUtilities/*.{h,m}"
  end
end

