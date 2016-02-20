require 'test_helper'

class QueensControllerTest < ActionController::TestCase
  setup do
    @queen = queens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:queens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create queen" do
    assert_difference('Queen.count') do
      post :create, queen: { bio: @queen.bio, city: @queen.city, image: @queen.image, name: @queen.name }
    end

    assert_redirected_to queen_path(assigns(:queen))
  end

  test "should show queen" do
    get :show, id: @queen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @queen
    assert_response :success
  end

  test "should update queen" do
    patch :update, id: @queen, queen: { bio: @queen.bio, city: @queen.city, image: @queen.image, name: @queen.name }
    assert_redirected_to queen_path(assigns(:queen))
  end

  test "should destroy queen" do
    assert_difference('Queen.count', -1) do
      delete :destroy, id: @queen
    end

    assert_redirected_to queens_path
  end
end
