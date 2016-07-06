$:.push File.expand_path('../lib', __FILE__)

require 'administrate/field/enum'

Gem::Specification.new do |s|
  s.name = 'administrate-field-enum'
  s.version = Administrate::Field::Enum::VERSION
  s.authors = ['Balbina Santana']
  s.email = ['balbina@disruptiveangels.com']
  s.homepage = 'https://github.com/DisruptiveAngels/administrate_field_enum'
  s.summary = 'Enum field plugin for Administrate'
  s.description = s.summary
  s.license = 'MIT'

  s.require_paths = ['lib']
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.add_dependency 'administrate', '>= 0.2.2', '< 0.3.0'
  s.add_dependency 'rails', '>= 4.0', '< 5.1'
end
