require 'test_helper'

class StyleProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style_profile = style_profiles(:one)
  end

  test "should get index" do
    get style_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_style_profile_url
    assert_response :success
  end

  test "should create style_profile" do
    assert_difference('StyleProfile.count') do
      post style_profiles_url, params: { style_profile: { col_height: @style_profile.col_height, col_type: @style_profile.col_type, col_width: @style_profile.col_width } }
    end

    assert_redirected_to style_profile_url(StyleProfile.last)
  end

  test "should show style_profile" do
    get style_profile_url(@style_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_style_profile_url(@style_profile)
    assert_response :success
  end

  test "should update style_profile" do
    patch style_profile_url(@style_profile), params: { style_profile: { col_height: @style_profile.col_height, col_type: @style_profile.col_type, col_width: @style_profile.col_width } }
    assert_redirected_to style_profile_url(@style_profile)
  end

  test "should destroy style_profile" do
    assert_difference('StyleProfile.count', -1) do
      delete style_profile_url(@style_profile)
    end

    assert_redirected_to style_profiles_url
  end
end
