require "test_helper"

class Public::PostShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_post_shops_index_url
    assert_response :success
  end

  test "should get update" do
    get public_post_shops_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_post_shops_destroy_url
    assert_response :success
  end

  test "should get destroy_all" do
    get public_post_shops_destroy_all_url
    assert_response :success
  end

  test "should get new" do
    get public_post_shops_new_url
    assert_response :success
  end
end
