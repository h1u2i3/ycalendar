require 'test_helper'

class Ycalendar::Test < ActiveSupport::TestCase
  test 'version should not be nil' do
    assert_not_nil Ycalendar::VERSION
  end
end
