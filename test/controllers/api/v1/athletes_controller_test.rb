require 'test_helper'

class Api::V1::AthletesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_athletes_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_athletes_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_athletes_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_athletes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_athletes_destroy_url
    assert_response :success
  end

end
