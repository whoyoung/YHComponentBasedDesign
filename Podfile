source 'https://github.com/CocoaPods/Specs.git'

project 'YHComponentBasedDesign.xcodeproj'

platform :ios, 9.0

inhibit_all_warnings!
use_modular_headers!

def componentA_pods
    pod 'YHInternal',:path => 'LocalPods/ComponentA', :inhibit_warnings => false
    pod 'YHPublic',:path => 'LocalPods/ComponentA', :inhibit_warnings => false
end

target 'YHComponentBasedDesign' do
    componentA_pods
end

