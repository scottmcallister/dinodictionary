require 'test_helper'

class DinosaursControllerTest < ActionController::TestCase
  setup do
    @dinosaur = dinosaurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinosaurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dinosaur" do
    assert_difference('Dinosaur.count') do
      post :create, dinosaur: { description: @dinosaur.description, diet: @dinosaur.diet, era: @dinosaur.era, height: @dinosaur.height, image_url: @dinosaur.image_url, length: @dinosaur.length, name: @dinosaur.name, order: @dinosaur.order }
    end

    assert_redirected_to dinosaur_path(assigns(:dinosaur))
  end

  test "should show dinosaur" do
    get :show, id: @dinosaur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dinosaur
    assert_response :success
  end

  test "should update dinosaur" do
    patch :update, id: @dinosaur, dinosaur: { description: @dinosaur.description, diet: @dinosaur.diet, era: @dinosaur.era, height: @dinosaur.height, image_url: @dinosaur.image_url, length: @dinosaur.length, name: @dinosaur.name, order: @dinosaur.order }
    assert_redirected_to dinosaur_path(assigns(:dinosaur))
  end

  test "should destroy dinosaur" do
    assert_difference('Dinosaur.count', -1) do
      delete :destroy, id: @dinosaur
    end

    assert_redirected_to dinosaurs_path
  end
end
