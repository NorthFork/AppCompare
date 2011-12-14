require 'test_helper'

class AppProductsControllerTest < ActionController::TestCase
  setup do
    @app_product = app_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_product" do
    assert_difference('AppProduct.count') do
      post :create, app_product: @app_product.attributes
    end

    assert_redirected_to app_product_path(assigns(:app_product))
  end

  test "should show app_product" do
    get :show, id: @app_product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_product.to_param
    assert_response :success
  end

  test "should update app_product" do
    put :update, id: @app_product.to_param, app_product: @app_product.attributes
    assert_redirected_to app_product_path(assigns(:app_product))
  end

  test "should destroy app_product" do
    assert_difference('AppProduct.count', -1) do
      delete :destroy, id: @app_product.to_param
    end

    assert_redirected_to app_products_path
  end
end
