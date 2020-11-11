require 'test_helper'

class PionersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pioner = pioners(:one)
  end

  test "should get index" do
    get pioners_url
    assert_response :success
  end

  test "should get new" do
    get new_pioner_url
    assert_response :success
  end

  test "should create pioner" do
    assert_difference('Pioner.count') do
      post pioners_url, params: { pioner: { \: @pioner.\, first_name: @pioner.first_name, last-name: @pioner.last-name } }
    end

    assert_redirected_to pioner_url(Pioner.last)
  end

  test "should show pioner" do
    get pioner_url(@pioner)
    assert_response :success
  end

  test "should get edit" do
    get edit_pioner_url(@pioner)
    assert_response :success
  end

  test "should update pioner" do
    patch pioner_url(@pioner), params: { pioner: { \: @pioner.\, first_name: @pioner.first_name, last-name: @pioner.last-name } }
    assert_redirected_to pioner_url(@pioner)
  end

  test "should destroy pioner" do
    assert_difference('Pioner.count', -1) do
      delete pioner_url(@pioner)
    end

    assert_redirected_to pioners_url
  end
end
