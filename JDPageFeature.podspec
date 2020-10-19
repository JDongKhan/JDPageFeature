Pod::Spec.new do |spec|
    spec.name         = 'JDPageFeature'
    spec.version      = '0.0.1' 
    spec.summary      = 'JDKit'
    spec.homepage     = 'https://github.com/JDongKhan'
    spec.license      = 'MIT'
    spec.authors      = {'JD' => '419591321@qq.com'}
    spec.platform     = :ios, '8.0'
    spec.source       = {:git => 'https://github.com/JDongKhan/JDPageFeature.git', :tag => spec.version}
    spec.requires_arc = true
    spec.ios.deployment_target = '8.0'

    spec.source_files = 'Sources/**/*.{h,m}'
    
end
