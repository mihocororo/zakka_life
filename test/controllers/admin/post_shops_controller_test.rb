require "test_helper"

class Admin::PostShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_post_shops_show_url
    assert_response :success
  end

  test "should get update" do
    get admin_post_shops_update_url
    assert_response :success
  end
end
