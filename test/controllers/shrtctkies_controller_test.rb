require 'test_helper'

class ShrtctkiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shrtctky = shrtctkies(:one)
  end

  test "should get index" do
    get shrtctkies_url
    assert_response :success
  end

  test "should get new" do
    get new_shrtctky_url
    assert_response :success
  end

  test "should create shrtctky" do
    assert_difference('Shrtctky.count') do
      post shrtctkies_url, params: { shrtctky: { key: @shrtctky.key, name: @shrtctky.name, note: @shrtctky.note } }
    end

    assert_redirected_to shrtctky_url(Shrtctky.last)
  end

  test "should show shrtctky" do
    get shrtctky_url(@shrtctky)
    assert_response :success
  end

  test "should get edit" do
    get edit_shrtctky_url(@shrtctky)
    assert_response :success
  end

  test "should update shrtctky" do
    patch shrtctky_url(@shrtctky), params: { shrtctky: { key: @shrtctky.key, name: @shrtctky.name, note: @shrtctky.note } }
    assert_redirected_to shrtctky_url(@shrtctky)
  end

  test "should destroy shrtctky" do
    assert_difference('Shrtctky.count', -1) do
      delete shrtctky_url(@shrtctky)
    end

    assert_redirected_to shrtctkies_url
  end
end
