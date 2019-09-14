source 'https://github.com/CocoaPods/Specs.git'

project 'YHComponentBasedDesign.xcodeproj'

platform :ios, 9.0

inhibit_all_warnings!
use_modular_headers!

def directorComponent_pods
    pod 'DirectorComponent',:path => 'LocalPods/DirectorComponent', :inhibit_warnings => false
end

def componentA_pods
    pod 'YHInternal',:path => 'LocalPods/ComponentA', :inhibit_warnings => false
    pod 'YHPublic',:path => 'LocalPods/ComponentA', :inhibit_warnings => false
end

def dependencyComponent_pods
    pod 'DependencyComponent',:path => 'LocalPods/DependencyComponent', :inhibit_warnings => false
end


target 'YHComponentBasedDesign' do
    componentA_pods
    directorComponent_pods
    dependencyComponent_pods	
end

