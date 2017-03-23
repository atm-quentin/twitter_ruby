require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "name uniquiness" do
    user_a = User.new(nom: "bob")
    user_b = User.new(nom: "bob")
    
    assert user_a.save
    assert_not user_b.save
  end
  
  
end
