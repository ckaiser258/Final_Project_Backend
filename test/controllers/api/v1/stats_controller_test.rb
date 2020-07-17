require 'test_helper'

class Api::V1::StatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_stats_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_stats_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_stats_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_stats_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_stats_destroy_url
    assert_response :success
  end

end
