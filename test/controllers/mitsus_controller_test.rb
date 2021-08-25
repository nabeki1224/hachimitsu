require 'test_helper'

class MitsusControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mitsus_show_url
    assert_response :success
  end

  test "should get index" do
    get mitsus_index_url
    assert_response :success
  end

  test "should get create" do
    get mitsus_create_url
    assert_response :success
  end

  test "should get new" do
    get mitsus_new_url
    assert_response :success
  end

  test "should get destroy" do
    get mitsus_destroy_url
    assert_response :success
  end

end
