require "test_helper"

class Admin::PostRoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_post_rooms_show_url
    assert_response :success
  end

  test "should get update" do
    get admin_post_rooms_update_url
    assert_response :success
  end

  test "should get index" do
    get admin_post_rooms_index_url
    assert_response :success
  end
end
