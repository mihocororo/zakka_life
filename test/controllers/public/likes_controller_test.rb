require "test_helper"

class Public::LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_likes_index_url
    assert_response :success
  end

  test "should get show" do
    get public_likes_show_url
    assert_response :success
  end
end
