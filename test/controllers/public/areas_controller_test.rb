require "test_helper"

class Public::AreasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_areas_index_url
    assert_response :success
  end
end
