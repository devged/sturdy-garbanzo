require 'test_helper'

class AttdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attdatum = attdata(:one)
  end

  test "should get index" do
    get attdata_url
    assert_response :success
  end

  test "should get new" do
    get new_attdatum_url
    assert_response :success
  end

  test "should create attdatum" do
    assert_difference('Attdatum.count') do
      post attdata_url, params: { attdatum: { personnel_id: @attdatum.personnel_id, rateable_id: @attdatum.rateable_id, season_id: @attdatum.season_id } }
    end

    assert_redirected_to attdatum_url(Attdatum.last)
  end

  test "should show attdatum" do
    get attdatum_url(@attdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_attdatum_url(@attdatum)
    assert_response :success
  end

  test "should update attdatum" do
    patch attdatum_url(@attdatum), params: { attdatum: { personnel_id: @attdatum.personnel_id, rateable_id: @attdatum.rateable_id, season_id: @attdatum.season_id } }
    assert_redirected_to attdatum_url(@attdatum)
  end

  test "should destroy attdatum" do
    assert_difference('Attdatum.count', -1) do
      delete attdatum_url(@attdatum)
    end

    assert_redirected_to attdata_url
  end
end
