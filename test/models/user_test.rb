require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should add user' do
    create(:user)
    assert_not_empty User.all
  end
end
