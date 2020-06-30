require 'test_helper'

class ShellscriptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shellscript = shellscripts(:one)
  end

  test "should get index" do
    get shellscripts_url
    assert_response :success
  end

  test "should get new" do
    get new_shellscript_url
    assert_response :success
  end

  test "should create shellscript" do
    assert_difference('Shellscript.count') do
      post shellscripts_url, params: { shellscript: { app: @shellscript.app, key: @shellscript.key, note: @shellscript.note } }
    end

    assert_redirected_to shellscript_url(Shellscript.last)
  end

  test "should show shellscript" do
    get shellscript_url(@shellscript)
    assert_response :success
  end

  test "should get edit" do
    get edit_shellscript_url(@shellscript)
    assert_response :success
  end

  test "should update shellscript" do
    patch shellscript_url(@shellscript), params: { shellscript: { app: @shellscript.app, key: @shellscript.key, note: @shellscript.note } }
    assert_redirected_to shellscript_url(@shellscript)
  end

  test "should destroy shellscript" do
    assert_difference('Shellscript.count', -1) do
      delete shellscript_url(@shellscript)
    end

    assert_redirected_to shellscripts_url
  end
end
