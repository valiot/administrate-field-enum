$:.push File.expand_path('../lib', __FILE__)

require 'administrate/field/enum'

Gem::Specification.new do |gem|
  gem.name = 'administrate-field-enum'
  gem.version = Administrate::Field::Enum::VERSION
  gem.authors = ['Balbina Santana']
  gem.email = ['balbina@disruptiveangels.com']
  gem.homepage = 'https://github.com/DisruptiveAngels/administrate_field_enum'
  gem.summary = 'Enum field plugin for Administrate'
  gem.description = gem.summary
  gem.license = 'MIT'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split('\n')
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split('\n')

  gem.add_dependency 'administrate', '>= 0.2.0.rc1', '< 0.3.0'
  gem.add_dependency 'rails', '~> 4.2', '< 5.1'
end
