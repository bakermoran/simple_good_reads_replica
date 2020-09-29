require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "Austin", last_name: "Russell", user_name: "russbot",
                     password: "password5", password_confirmation: "password5")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "first_name should be present" do
    @user.first_name = "     "
    assert_not @user.valid?
  end

  test "last_name should be present" do
    @user.last_name = "     "
    assert_not @user.valid?
  end

  test "user_name should be present" do
    @user.user_name = "     "
    assert_not @user.valid?
  end

  test "first_name should not be too long" do
    @user.first_name = "a" * 51
    assert_not @user.valid?
  end

  test "last_name should not be too long" do
    @user.last_name = "a" * 51
    assert_not @user.valid?
  end

  test "user_name should not be too long" do
    @user.user_name = "a" * 51
    assert_not @user.valid?
  end

  test "user_name should be unique" do
    duplicate_user = @user.dup
    duplicate_user.user_name = @user.user_name.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')
  end
end
