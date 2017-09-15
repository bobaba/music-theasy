require 'test_helper'

class ScalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scale = scales(:one)
  end

  test "should get index" do
    get scales_url
    assert_response :success
  end

  test "should get new" do
    get new_scale_url
    assert_response :success
  end

  test "should create scale" do
    assert_difference('Scale.count') do
      post scales_url, params: { scale: { a: @scale.a, a_sharp: @scale.a_sharp, b: @scale.b, c: @scale.c, c_sharp: @scale.c_sharp, d: @scale.d, d_sharp: @scale.d_sharp, e: @scale.e, f: @scale.f, f_sharp: @scale.f_sharp, g: @scale.g, g_sharp: @scale.g_sharp, history: @scale.history, scale_name: @scale.scale_name } }
    end

    assert_redirected_to scale_url(Scale.last)
  end

  test "should show scale" do
    get scale_url(@scale)
    assert_response :success
  end

  test "should get edit" do
    get edit_scale_url(@scale)
    assert_response :success
  end

  test "should update scale" do
    patch scale_url(@scale), params: { scale: { a: @scale.a, a_sharp: @scale.a_sharp, b: @scale.b, c: @scale.c, c_sharp: @scale.c_sharp, d: @scale.d, d_sharp: @scale.d_sharp, e: @scale.e, f: @scale.f, f_sharp: @scale.f_sharp, g: @scale.g, g_sharp: @scale.g_sharp, history: @scale.history, scale_name: @scale.scale_name } }
    assert_redirected_to scale_url(@scale)
  end

  test "should destroy scale" do
    assert_difference('Scale.count', -1) do
      delete scale_url(@scale)
    end

    assert_redirected_to scales_url
  end
end
