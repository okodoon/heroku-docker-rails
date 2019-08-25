require 'test_helper'

class KaminokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kaminoku = kaminokus(:one)
  end

  test "should get index" do
    get kaminokus_url
    assert_response :success
  end

  test "should get new" do
    get new_kaminoku_url
    assert_response :success
  end

  test "should create kaminoku" do
    assert_difference('Kaminoku.count') do
      post kaminokus_url, params: { kaminoku: { kamigo: @kaminoku.kamigo, nakashichi: @kaminoku.nakashichi, shimogo: @kaminoku.shimogo } }
    end

    assert_redirected_to kaminoku_url(Kaminoku.last)
  end

  test "should show kaminoku" do
    get kaminoku_url(@kaminoku)
    assert_response :success
  end

  test "should get edit" do
    get edit_kaminoku_url(@kaminoku)
    assert_response :success
  end

  test "should update kaminoku" do
    patch kaminoku_url(@kaminoku), params: { kaminoku: { kamigo: @kaminoku.kamigo, nakashichi: @kaminoku.nakashichi, shimogo: @kaminoku.shimogo } }
    assert_redirected_to kaminoku_url(@kaminoku)
  end

  test "should destroy kaminoku" do
    assert_difference('Kaminoku.count', -1) do
      delete kaminoku_url(@kaminoku)
    end

    assert_redirected_to kaminokus_url
  end
end
