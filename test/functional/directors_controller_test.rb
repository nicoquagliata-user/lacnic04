require 'test_helper'

class DirectorsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:directors)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_director
    assert_difference('Director.count') do
      post :create, :director => { }
    end

    assert_redirected_to director_path(assigns(:director))
  end

  def test_should_show_director
    get :show, :id => directors(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => directors(:one).id
    assert_response :success
  end

  def test_should_update_director
    put :update, :id => directors(:one).id, :director => { }
    assert_redirected_to director_path(assigns(:director))
  end

  def test_should_destroy_director
    assert_difference('Director.count', -1) do
      delete :destroy, :id => directors(:one).id
    end

    assert_redirected_to directors_path
  end
end
