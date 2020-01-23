require 'test_helper'

class UsersInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_info_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_info_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_info_update_url
    assert_response :success
  end

end
