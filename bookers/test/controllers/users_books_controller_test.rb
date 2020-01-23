require 'test_helper'

class UsersBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_books_new_url
    assert_response :success
  end

  test "should get create" do
    get users_books_create_url
    assert_response :success
  end

  test "should get index" do
    get users_books_index_url
    assert_response :success
  end

  test "should get show" do
    get users_books_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_books_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_books_update_url
    assert_response :success
  end

  test "should get dentroy" do
    get users_books_dentroy_url
    assert_response :success
  end

end
