require "test_helper"

class SurvaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get survays_index_url
    assert_response :success
  end
end
