require 'test_helper'

class AppartmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appartment_index_url
    assert_response :success
  end

  test "should get new" do
    get appartment_new_url
    assert_response :success
  end

  test "should get edit" do
    get appartment_edit_url
    assert_response :success
  end

end
