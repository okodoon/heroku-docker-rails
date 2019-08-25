require 'test_helper'

class ShimonokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shimonoku = shimonokus(:one)
  end

  test "should get index" do
    get shimonokus_url
    assert_response :success
  end

  test "should get new" do
    get new_shimonoku_url
    assert_response :success
  end

  test "should create shimonoku" do
    assert_difference('Shimonoku.count') do
      post shimonokus_url, params: { shimonoku: { kamishichi: @shimonoku.kamishichi, shimoshichi: @shimonoku.shimoshichi } }
    end

    assert_redirected_to shimonoku_url(Shimonoku.last)
  end

  test "should show shimonoku" do
    get shimonoku_url(@shimonoku)
    assert_response :success
  end

  test "should get edit" do
    get edit_shimonoku_url(@shimonoku)
    assert_response :success
  end

  test "should update shimonoku" do
    patch shimonoku_url(@shimonoku), params: { shimonoku: { kamishichi: @shimonoku.kamishichi, shimoshichi: @shimonoku.shimoshichi } }
    assert_redirected_to shimonoku_url(@shimonoku)
  end

  test "should destroy shimonoku" do
    assert_difference('Shimonoku.count', -1) do
      delete shimonoku_url(@shimonoku)
    end

    assert_redirected_to shimonokus_url
  end
end
