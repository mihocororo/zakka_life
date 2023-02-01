require "test_helper"

class Public::ShopCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_shop_comments_index_url
    assert_response :success
  end

  test "should get update" do
    get public_shop_comments_update_url
    assert_response :success
  end

  test "should get show" do
    get public_shop_comments_show_url
    assert_response :success
  end

  test "should get new" do
    get public_shop_comments_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_shop_comments_edit_url
    assert_response :success
  end
end
