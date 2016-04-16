# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require 'factory_girl'
FactoryGirl.definition_file_paths = [File.expand_path('../factories', __FILE__)]

require File.expand_path("../../test/dummy/config/environment.rb", __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../test/dummy/db/migrate", __FILE__)]

require "rails/test_help"
require "minitest/spec"
require 'minitest/mock'

FactoryGirl.find_definitions
