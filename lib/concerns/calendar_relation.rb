module Ycalendar
  module CalendarRelation
    extend ActiveSupport::Concern

    module ClassMethods
      # user(object) has_calendars_for service(resource)
      # 1. table users do not need have any primary key for other resources(for calendars)
      # service has_many_calendars
      # 2. table service do not need have any primary key too(for calendars).
      # calendars_belong_to resource
      # 3. calendars should have the object and the resources key(for calendars).
      def has_calendars_for(*resources)
        # use for the object
        resources.each do |resource|
          instance_eval { has_many :calendars, through: resource.to_sym }
        end
      end

      def has_many_calendars
        # use for the real calendar source
        instance_eval { has_many :calendars, as: :calendarable }
      end
    end

    
  end
end
