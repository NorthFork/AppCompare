require 'test_helper'

class AppVersionsControllerTest < ActionController::TestCase
  setup do
    @app_version = app_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_version" do
    assert_difference('AppVersion.count') do
      post :create, app_version: @app_version.attributes
    end

    assert_redirected_to app_version_path(assigns(:app_version))
  end

  test "should show app_version" do
    get :show, id: @app_version.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_version.to_param
    assert_response :success
  end

  test "should update app_version" do
    put :update, id: @app_version.to_param, app_version: @app_version.attributes
    assert_redirected_to app_version_path(assigns(:app_version))
  end

  test "should destroy app_version" do
    assert_difference('AppVersion.count', -1) do
      delete :destroy, id: @app_version.to_param
    end

    assert_redirected_to app_versions_path
  end
end
