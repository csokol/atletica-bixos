require 'test_helper'

class ModalidadesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modalidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modalidade" do
    assert_difference('Modalidade.count') do
      post :create, :modalidade => { }
    end

    assert_redirected_to modalidade_path(assigns(:modalidade))
  end

  test "should show modalidade" do
    get :show, :id => modalidades(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => modalidades(:one).id
    assert_response :success
  end

  test "should update modalidade" do
    put :update, :id => modalidades(:one).id, :modalidade => { }
    assert_redirected_to modalidade_path(assigns(:modalidade))
  end

  test "should destroy modalidade" do
    assert_difference('Modalidade.count', -1) do
      delete :destroy, :id => modalidades(:one).id
    end

    assert_redirected_to modalidades_path
  end
end
