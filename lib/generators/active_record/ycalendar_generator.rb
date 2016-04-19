require 'rails/generators/active_record'

module ActiveRecord
  module Generators
    class YcalendarGenerator < ActiveRecord::Generators::Base
      argument :attributes, type: :array, default: [], banner: "field:type field:type"
      source_root File.expand_path("../templates", __FILE__)

      def add_migration
        migration_template "migration.rb.erb", "db/migrate/add_devise_to_#{table_name}.rb"
      end

      def add_model
        invoke "active_record:model", [name], migration: false
      end
    end
  end
end
