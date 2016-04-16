require 'active_support'
require 'active_record'

require 'ycalendar/version'

require 'concerns/calendar_relation'

module Ycalendar
end

ActiveRecord::Base.send(:include, Ycalendar::CalendarRelation)
