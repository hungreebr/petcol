require 'test_helper'

class UserTest < ActiveSupport::TestCase
 test "a user should enter a first name" do
	user = User.new
	assert !user.save
	assert !user.errors[:first_name].empty?
  end
  
   test "a user should enter a last name" do
	user = User.new
	assert !user.save
	assert !user.errors[:last_name].empty?
  end
  
     test "a user should enter a profile name" do
	user = User.new
	assert !user.save
	assert !user.errors[:profile_name].empty?
  end
  
    test "a user should have a unique profile name" do
	user = User.new
	user.profile_name = users(:sergio).profile_name
	assert !user.save
	assert !user.errors[:profile_name].empty?
  end
  
  test "a user should have a profile name without space" do
   user = User.new(first_name: 'Sergio', last_name: 'Oliveira', email: 'sergiodiogof@gmail.com') 
   user.password = user.password_confirmation = '123456789'
	user.profile_name = "My Profile With Spaces"
	
	assert !user.save
	assert !user.errors[:profile_name].empty?
	assert user.errors[:profile_name].include?("Deve ser formatado corretamente")
 end
 
  test "a user can have a correctly formatted profile name" do
    user = User.new(first_name: 'Sergio', last_name: 'Oliveira', email: 'blackdafy@walla.com')
    user.password = user.password_confirmation = '123456789'

    user.profile_name = 'sergiodiogo_1'
    assert user.valid?
   end
end
