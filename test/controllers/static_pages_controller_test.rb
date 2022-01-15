require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  
# below is the same as:

# def test_should_get_help
#  get static_pages_help_url
#  assert_response :success
# end

  test "should get help" do
    get static_pages_help_url
    # An assertion is a line of code that evaluates an object (or expression) for expected results.
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  test "should get about" do
    # this helper is automatically created when we modify routes.rb to get the about page
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
  
  test "should get root" do
    get root_url
    assert_response :success
  end
end
