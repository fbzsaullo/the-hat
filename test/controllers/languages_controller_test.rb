require "test_helper"

class LanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get languages_show_url
    assert_response :success
  end
end
