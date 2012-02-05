require 'test_helper'

class CamisetasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camisetas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camiseta" do
    assert_difference('Camiseta.count') do
      post :create, :camiseta => { }
    end

    assert_redirected_to camiseta_path(assigns(:camiseta))
  end

  test "should show camiseta" do
    get :show, :id => camisetas(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => camisetas(:one).id
    assert_response :success
  end

  test "should update camiseta" do
    put :update, :id => camisetas(:one).id, :camiseta => { }
    assert_redirected_to camiseta_path(assigns(:camiseta))
  end

  test "should destroy camiseta" do
    assert_difference('Camiseta.count', -1) do
      delete :destroy, :id => camisetas(:one).id
    end

    assert_redirected_to camisetas_path
  end
end
