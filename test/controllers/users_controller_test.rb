require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { activity: @user.activity, civilization: @user.civilization, control: @user.control, culture: @user.culture, drama: @user.drama, happiness: @user.happiness, health: @user.health, location: @user.location, passion: @user.passion, reflectivity: @user.reflectivity, relationships: @user.relationships, satisfaction: @user.satisfaction, self_view: @user.self_view, spirituality: @user.spirituality, wealth: @user.wealth }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { activity: @user.activity, civilization: @user.civilization, control: @user.control, culture: @user.culture, drama: @user.drama, happiness: @user.happiness, health: @user.health, location: @user.location, passion: @user.passion, reflectivity: @user.reflectivity, relationships: @user.relationships, satisfaction: @user.satisfaction, self_view: @user.self_view, spirituality: @user.spirituality, wealth: @user.wealth }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
