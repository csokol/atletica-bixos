require 'test_helper'

class CorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cor" do
    assert_difference('Cor.count') do
      post :create, :cor => { }
    end

    assert_redirected_to cor_path(assigns(:cor))
  end

  test "should show cor" do
    get :show, :id => cors(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cors(:one).id
    assert_response :success
  end

  test "should update cor" do
    put :update, :id => cors(:one).id, :cor => { }
    assert_redirected_to cor_path(assigns(:cor))
  end

  test "should destroy cor" do
    assert_difference('Cor.count', -1) do
      delete :destroy, :id => cors(:one).id
    end

    assert_redirected_to cors_path
  end
end
