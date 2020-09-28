require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
    test "invalid signup information" do
        get signup_path
        assert_no_difference 'User.count' do
            post users_path, params: {
                user: {
                    first_name:  "",
                    last_name:  "",
                    user_name: "sd",
                    password:              "foo",
                    password_confirmation: "bar"
                }
            }
        end
        assert_template 'users/new'
    end

    test "valid signup information" do
        get signup_path
        assert_difference 'User.count', 1 do
            post users_path, params: {
                user: {
                    first_name:  "Zac",
                    last_name:  "Ford",
                    user_name: "zaccyford",
                    password:              "password6",
                    password_confirmation: "password6"
                }
            }
            follow_redirect!
        end
        assert_template 'users/show'
    end
end