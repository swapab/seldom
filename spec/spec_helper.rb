require 'rubygems'
require 'rspec'
require 'seldom'

I18n.config.enforce_available_locales = true

RSpec.configure do |config|
  config.order = :rand
  config.color_enabled = true
end
