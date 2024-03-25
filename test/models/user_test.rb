require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "name" do
    assert_equal "Accountant", users(:accountant).name
    assert_equal "Manager", users(:manager).name
    assert_equal "Eavesdropper", users(:eavesdropper).name
  end
end
