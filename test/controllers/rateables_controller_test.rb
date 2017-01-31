require 'test_helper'

class RateablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rateable = rateables(:one)
  end

  test "should get index" do
    get rateables_url
    assert_response :success
  end

  test "should get new" do
    get new_rateable_url
    assert_response :success
  end

  test "should create rateable" do
    assert_difference('Rateable.count') do
      post rateables_url, params: { rateable: { rateable: @rateable.rateable, rating: @rateable.rating } }
    end

    assert_redirected_to rateable_url(Rateable.last)
  end

  test "should show rateable" do
    get rateable_url(@rateable)
    assert_response :success
  end

  test "should get edit" do
    get edit_rateable_url(@rateable)
    assert_response :success
  end

  test "should update rateable" do
    patch rateable_url(@rateable), params: { rateable: { rateable: @rateable.rateable, rating: @rateable.rating } }
    assert_redirected_to rateable_url(@rateable)
  end

  test "should destroy rateable" do
    assert_difference('Rateable.count', -1) do
      delete rateable_url(@rateable)
    end

    assert_redirected_to rateables_url
  end
end
