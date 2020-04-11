require 'test_helper'

class VdosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vdo = vdos(:one)
  end

  test "should get index" do
    get vdos_url
    assert_response :success
  end

  test "should get new" do
    get new_vdo_url
    assert_response :success
  end

  test "should create vdo" do
    assert_difference('Vdo.count') do
      post vdos_url, params: { vdo: { body: @vdo.body, title: @vdo.title } }
    end

    assert_redirected_to vdo_url(Vdo.last)
  end

  test "should show vdo" do
    get vdo_url(@vdo)
    assert_response :success
  end

  test "should get edit" do
    get edit_vdo_url(@vdo)
    assert_response :success
  end

  test "should update vdo" do
    patch vdo_url(@vdo), params: { vdo: { body: @vdo.body, title: @vdo.title } }
    assert_redirected_to vdo_url(@vdo)
  end

  test "should destroy vdo" do
    assert_difference('Vdo.count', -1) do
      delete vdo_url(@vdo)
    end

    assert_redirected_to vdos_url
  end
end
