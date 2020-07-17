require 'test_helper'

class Api::V1::InjuriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_injuries_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_injuries_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_injuries_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_injuries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_injuries_destroy_url
    assert_response :success
  end

end
