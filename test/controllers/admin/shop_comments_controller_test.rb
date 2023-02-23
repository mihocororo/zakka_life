require "test_helper"

class Admin::ShopCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_shop_comments_show_url
    assert_response :success
  end

  test "should get index" do
    get admin_shop_comments_index_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_shop_comments_destroy_url
    assert_response :success
  end
end
