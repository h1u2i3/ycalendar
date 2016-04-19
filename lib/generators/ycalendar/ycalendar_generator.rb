require 'rails/generators'

module Ycalendar
  module Generators
    class YcalendarGenerator < Rails::Generators::NamedBase
      namespace "ycalendar"
      desc "Generates a model with the given NAME (if one does not exist) with devise " <<
           "configuration plus a migration file and devise routes."

      hook_for :orm

      # def install_ycalendar
      #   exec("rails g ycalendar:install #{name}")
      # end

    end
  end
end
