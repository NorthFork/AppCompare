require 'test_helper'

class AppFeaturesControllerTest < ActionController::TestCase
  setup do
    @app_feature = app_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_feature" do
    assert_difference('AppFeature.count') do
      post :create, :app_feature => @app_feature.attributes
    end

    assert_redirected_to app_feature_path(assigns(:app_feature))
  end

  test "should show app_feature" do
    get :show, :id => @app_feature.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @app_feature.to_param
    assert_response :success
  end

  test "should update app_feature" do
    put :update, :id => @app_feature.to_param, :app_feature => @app_feature.attributes
    assert_redirected_to app_feature_path(assigns(:app_feature))
  end

  test "should destroy app_feature" do
    assert_difference('AppFeature.count', -1) do
      delete :destroy, :id => @app_feature.to_param
    end

    assert_redirected_to app_features_path
  end
end
