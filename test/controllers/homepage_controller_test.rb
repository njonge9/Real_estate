require "test_helper"

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get homepage_main_url
    assert_response :success
  end
end
