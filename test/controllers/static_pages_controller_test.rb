require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end
  
  test "should get about" do
    # this helper is automatically created when we modify routes.rb to get the about page
    get static_pages_about_url
    assert_response :success
  end
end
