Pod::Spec.new do |s|
  s.name = 'XaynBackOfficeSdk'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.21'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0-rc8' }
  s.authors = 'xayn.com'
  s.license = Apache-2.0
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'XaynBackOfficeSdk Swift SDK'
  s.description = 'xayn_back_office_sdk'
  s.source_files = 'XaynBackOfficeSdk/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
