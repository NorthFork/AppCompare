require 'test_helper'

class FeatureCategoriesControllerTest < ActionController::TestCase
  setup do
    @feature_category = feature_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feature_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feature_category" do
    assert_difference('FeatureCategory.count') do
      post :create, :feature_category => @feature_category.attributes
    end

    assert_redirected_to feature_category_path(assigns(:feature_category))
  end

  test "should show feature_category" do
    get :show, :id => @feature_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @feature_category.to_param
    assert_response :success
  end

  test "should update feature_category" do
    put :update, :id => @feature_category.to_param, :feature_category => @feature_category.attributes
    assert_redirected_to feature_category_path(assigns(:feature_category))
  end

  test "should destroy feature_category" do
    assert_difference('FeatureCategory.count', -1) do
      delete :destroy, :id => @feature_category.to_param
    end

    assert_redirected_to feature_categories_path
  end
end
