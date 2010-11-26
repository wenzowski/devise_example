RAILS_GEM_VERSION = '2.3.10' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'warden', :version => '0.10.7'
  config.gem 'devise', :version => '1.0.9'
  config.gem 'rails-footnotes', :version => '3.6.6'

  config.time_zone = 'UTC'
  config.i18n.default_locale = :en
end
