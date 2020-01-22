require 'test_helper'

class AcountUserControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get acount_user_new_url
    assert_response :success
  end

  test "should get create" do
    get acount_user_create_url
    assert_response :success
  end

  test "should get show" do
    get acount_user_show_url
    assert_response :success
  end

  test "should get edit" do
    get acount_user_edit_url
    assert_response :success
  end

end
