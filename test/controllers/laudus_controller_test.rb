require 'test_helper'

class LaudusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laudu = laudus(:one)
  end

  test "should get index" do
    get laudus_url
    assert_response :success
  end

  test "should get new" do
    get new_laudu_url
    assert_response :success
  end

  test "should create laudu" do
    assert_difference('Laudu.count') do
      post laudus_url, params: { laudu: { userId: @laudu.userId } }
    end

    assert_redirected_to laudu_url(Laudu.last)
  end

  test "should show laudu" do
    get laudu_url(@laudu)
    assert_response :success
  end

  test "should get edit" do
    get edit_laudu_url(@laudu)
    assert_response :success
  end

  test "should update laudu" do
    patch laudu_url(@laudu), params: { laudu: { userId: @laudu.userId } }
    assert_redirected_to laudu_url(@laudu)
  end

  test "should destroy laudu" do
    assert_difference('Laudu.count', -1) do
      delete laudu_url(@laudu)
    end

    assert_redirected_to laudus_url
  end
end
