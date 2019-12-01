require 'test_helper'

class Admins::CanchasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_cancha = admins_canchas(:one)
  end

  test "should get index" do
    get admins_canchas_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_cancha_url
    assert_response :success
  end

  test "should create admins_cancha" do
    assert_difference('Admins::Cancha.count') do
      post admins_canchas_url, params: { admins_cancha: {  } }
    end

    assert_redirected_to admins_cancha_url(Admins::Cancha.last)
  end

  test "should show admins_cancha" do
    get admins_cancha_url(@admins_cancha)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_cancha_url(@admins_cancha)
    assert_response :success
  end

  test "should update admins_cancha" do
    patch admins_cancha_url(@admins_cancha), params: { admins_cancha: {  } }
    assert_redirected_to admins_cancha_url(@admins_cancha)
  end

  test "should destroy admins_cancha" do
    assert_difference('Admins::Cancha.count', -1) do
      delete admins_cancha_url(@admins_cancha)
    end

    assert_redirected_to admins_canchas_url
  end
end
