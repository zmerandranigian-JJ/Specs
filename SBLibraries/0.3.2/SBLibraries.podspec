Pod::Spec.new do |s|
  s.name         = "SBLibraries"
  s.version      = "0.3.2"
  s.summary      = "SBLibraries is a collection of modules intended to make apps for Storybots easier"

  s.homepage     = "http://github.com/jibjab"
  s.license      = {  :type => 'MIT',
                      :text =>  <<-LICENSE
                        Copyright 2014. Me.
                                LICENSE
                    }
  s.author       = { "Brad Roush" => "brad.roush@jibjab.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/jibjab/storybots-libraries.git", :tag => "0.3.2" }
  s.requires_arc = true


  s.default_subspec = 'Utilities'

  s.subspec 'Utilities' do |ss|
    ss.source_files = "Utilities/SBUtilities/*.{h,m}"
  end

  s.subspec 'CommonAssets' do |ss|
    ss.source_files = "CommonAssets/SBCommonAssets/Classes/*.{h,m}"
    ss.resources = "CommonAssets/SBCommonAssets/Resources/*.{png,otf,ttf}"
    ss.dependency 'SBLibraries/Utilities'
  end

  s.subspec 'AccountAuthentication' do |ss|
    ss.source_files = "AccountAuthentication/SBAccountAuthentication/*.{h,m}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'Reachability', '~> 3.1'
  end

  s.subspec 'AccountCharacters' do |ss|
    ss.source_files = "AccountCharacters/SBAccountCharacters/*.{h,m}"
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'FMDB', '~> 2.3'
  end

  s.subspec 'AdminInterface' do |ss|
    ss.source_files = "AdminInterface/SBAdminInterface/*.{h,m}"
    ss.dependency 'SBLibraries/Tracking'
  end

  s.subspec 'CastingFunnel' do |ss|
    ss.source_files = "CastingFunnel/SBCastingFunnel/Classes/*.{h,m}"
    ss.resources = "CastingFunnel/SBCastingFunnel/Resources/*.{png,xib}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'SBLibraries/AccountCharacters'
    ss.dependency 'SBLibraries/Popups'
    ss.dependency 'SBLibraries/SharedUIFeatures'
    ss.dependency 'SBLibraries/Tracking'
    ss.dependency 'SBLibraries/Tips'
    ss.dependency 'DejalActivityView', '~> 1.2'
    ss.dependency 'iCarousel', '~> 1.8'
    ss.dependency 'Helpshift', '~> 4.7'
  end

  s.subspec 'CharacterProgressView' do |ss|
    ss.source_files = "CharacterProgressView/SBCharacterView/Classes/*.{h,m}"
    ss.resources = "CharacterProgressView/SBCharacterView/Resources/*.{png,xib}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'SBLibraries/AccountCharacters'
  end

  s.subspec 'Popups' do |ss|
    ss.source_files = "Popups/SBPopup/Classes/*.{h,m}"
    ss.resources = "Popups/SBPopup/Resources/*.{png,xib}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
  end

  s.subspec 'RatingManager' do |ss|
    ss.source_files = "RatingManager/SBRatingManager/Classes/*.{h,m}"
    ss.resources = "RatingManager/SBRatingManager/Resources/*.{png,xib}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'SBLibraries/Popups'
  end

  s.subspec 'SharedUIFeatures' do |ss|
    ss.source_files = "SharedUIFeatures/SBSharedUIFeatures/*.{h,m}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'SBLibraries/Popups'
  end

  s.subspec 'Tracking' do |ss|
    ss.source_files = "Tracking/SBTrackingManager/*.{h,m}"
    ss.dependency 'Localytics-AMP',  '~> 2.0'
    ss.dependency 'Quantcast-Measure', '~> 1.4'
    ss.dependency 'MobileAppTracker', '~> 3.4'
    ss.dependency 'CrashlyticsFramework', '~> 2.2'
    ss.dependency 'Facebook-iOS-SDK', '~> 3.17'
    ss.dependency 'Fiksu-iOS-SDK', '~> 4.1'
    ss.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/Fiksu-iOS-SDK/**\"" }
  end

  s.subspec 'Tips' do |ss|
    ss.source_files = "Tips/SBTips/*.{h,m}"
  end

end