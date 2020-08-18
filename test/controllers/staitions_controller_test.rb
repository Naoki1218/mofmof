require 'test_helper'

class StaitionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staitions_index_url
    assert_response :success
  end

  test "should get new" do
    get staitions_new_url
    assert_response :success
  end

  test "should get edit" do
    get staitions_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get staitions_destroy_url
    assert_response :success
  end

  test "should get update" do
    get staitions_update_url
    assert_response :success
  end

  test "should get create" do
    get staitions_create_url
    assert_response :success
  end

end
