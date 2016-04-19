require 'rails/generators'
module Ycalendar
  # module Generators
    class InstallGenerator < Rails::Generators::NamedBase
      desc "Create Ycalendar's base files"
      argument :name, type: :string
      source_root File.expand_path('../templates', __FILE__)

      def add_model
        path = "#{Rails.root}/app/models/#{self.name}.rb"
        if File.exists?(path)
          puts "Skipping as file #{self.name}.rb already exists!"
        else
          puts "Adding calendar (app/models/#{self.name}.rb)..."
          template "calendar.rb.erb", path
        end
      end

    end
  # end
end
