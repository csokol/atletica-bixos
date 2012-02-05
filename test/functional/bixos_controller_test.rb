require 'test_helper'

class BixosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bixos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bixo" do
    assert_difference('Bixo.count') do
      post :create, :bixo => { }
    end

    assert_redirected_to bixo_path(assigns(:bixo))
  end

  test "should show bixo" do
    get :show, :id => bixos(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bixos(:one).id
    assert_response :success
  end

  test "should update bixo" do
    put :update, :id => bixos(:one).id, :bixo => { }
    assert_redirected_to bixo_path(assigns(:bixo))
  end

  test "should destroy bixo" do
    assert_difference('Bixo.count', -1) do
      delete :destroy, :id => bixos(:one).id
    end

    assert_redirected_to bixos_path
  end
end
