ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def is_logged_in?
    !session[:user_id].nil?
  end

  # def log_in_as(user, options = {})
  #   password = options[:password] || 'password'
  #   if integration_test?
  #       post login_path, params: {
  #           session: {
  #               user_name: user.user_name,
  #               password:    password
  #           }
  #       }
  #   else
  #     session[:user_id] = user.id
  #   end
  # end

  private

    # Returns true inside an integration test.
    def integration_test?
      defined?(post_via_redirect)
    end
end
