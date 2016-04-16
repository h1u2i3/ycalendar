require 'test_helper'

class Ycalendar::Test < ActiveSupport::TestCase
  describe 'verison' do
    it 'version should not be nil' do
      Ycalendar::VERSION.wont_be_nil
    end
  end
end
