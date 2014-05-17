require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "check one" do
    assert { 1 == 1 }
    # assert { 2 == 1 }
  end

  test "with a mocha mock" do
    User.expects(:find).with(1).returns(stub(:whatever => :stuff))
    assert { User.find(1).whatever == :stuff }
  end
end
