require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/messages'
require_relative '../apps/web/application'
require_relative './sidekiq'

Hanami::Container.configure do
  mount Web::Application, at: '/'
end
