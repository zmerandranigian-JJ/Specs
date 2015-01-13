# pod repo push REPO_NAME SBLibraries.podspec

Pod::Spec.new do |s|
  s.name         = "SBLibraries"
  s.version      = "1.1.1"
  s.summary      = "SBLibraries is a collection of modules intended to make apps for Storybots easier"

  s.homepage     = "http://github.com/jibjab"
  s.license      = {  :type => 'MIT',
                      :text =>  <<-LICENSE
                        Copyright 2014. Me.
                                LICENSE
                    }
  s.author       = { "Brad Roush" => "brad.roush@jibjab.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/jibjab/storybots-libraries.git", :tag => "1.1.1" }
  s.requires_arc = true


  s.default_subspec = 'Utilities'

  s.subspec 'Utilities' do |ss|
    ss.source_files = "Utilities/SBUtilities/*.{h,m}"
  end

  s.subspec 'CommonAssets' do |ss|
    ss.source_files = "CommonAssets/SBCommonAssets/Classes/*.{h,m}"
    ss.resources = "CommonAssets/SBCommonAssets/Resources/*.{png,otf,ttf,strings,html}"
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

  s.subspec 'ABTesting' do |ss|
    ss.source_files = "ABTesting/SBABTesting/*.{h,m}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'Optimizely-iOS-SDK', '~> 1.0'
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

  s.subspec 'HomeScreen' do |ss|
    ss.source_files = "HomeScreen/SBHomeScreen/Classes/*.{h,m}"
    ss.resources = "HomeScreen/SBHomeScreen/Resources/*.{png,xib,plist,bundle,mp4}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'SBLibraries/Popups'
    ss.dependency 'SBLibraries/Tracking'
    ss.dependency 'AFNetworking', '~> 2.4'
    ss.dependency 'ZipArchive', '~> 1.3'
  end

  s.subspec 'Popups' do |ss|
    ss.source_files = "Popups/SBPopup/Classes/*.{h,m}"
    ss.resources = "Popups/SBPopup/Resources/*.{png,xib}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
  end

  s.subspec 'RatingManager' do |ss|
    ss.source_files = "RatingManager/SBRatingManager/Classes/*.{h,m}"
    ss.resources = "RatingManager/SBRatingManager/Resources/*.{png}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'SBLibraries/Popups'
  end

  s.subspec 'SharedUIFeatures' do |ss|
    ss.source_files = "SharedUIFeatures/SBSharedUIFeatures/Classes/*.{h,m}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'SBLibraries/Popups'
    ss.dependency 'SBLibraries/Tracking'
    ss.dependency 'DejalActivityView', '~> 1.2'
  end

  s.subspec 'Tracking' do |ss|
    ss.source_files = "Tracking/SBTrackingManager/*.{h,m}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'Localytics-AMP',  '~> 2.0'
    ss.dependency 'Quantcast-Measure', '~> 1.4'
    ss.dependency 'MobileAppTracker', '~> 3.4'
    ss.dependency 'CrashlyticsFramework', '~> 2.2'
    ss.dependency 'Facebook-iOS-SDK', '~> 3.17'
    ss.dependency 'Fiksu-iOS-SDK', '~> 4.1'
    ss.dependency 'GoogleAnalytics-iOS-SDK', '~> 3.10'
    ss.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/Fiksu-iOS-SDK/**\"" }
  end

  s.subspec 'Tips' do |ss|
    ss.source_files = "Tips/SBTips/*.{h,m}"
  end

  s.subspec 'UniversalSettings' do |ss|
    ss.source_files = "UniversalSettings/SBSettings/Classes/*.{h,m}"
    ss.resources = "UniversalSettings/SBSettings/Resources/*.{png,xib,strings,xcassets}"
    ss.dependency 'SBLibraries/Utilities'
    ss.dependency 'SBLibraries/CommonAssets'
    ss.dependency 'SBLibraries/AccountAuthentication'
    ss.dependency 'SBLibraries/AccountCharacters'
    ss.dependency 'SBLibraries/CharacterProgressView'
    ss.dependency 'SBLibraries/HomeScreen'
    ss.dependency 'SBLibraries/Popups'
    ss.dependency 'SBLibraries/SharedUIFeatures'
    ss.dependency 'SBLibraries/Tracking'
    ss.dependency 'DejalActivityView', '~> 1.2'
    ss.dependency 'Helpshift', '~> 4.7'
  end

end
