require 'test_helper'

class RepositoriesControllerTest < ActionController::TestCase
  setup do
    @repository = repositories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create repository" do
    assert_difference('Repository.count') do
      post :create, params: { repository: { full_name: @repository.full_name } }
    end

    assert_response 201
  end

  test "should show repository" do
    get :show, params: { id: @repository }
    assert_response :success
  end

  test "should update repository" do
    patch :update, params: { id: @repository, repository: { full_name: @repository.full_name } }
    assert_response 200
  end

  test "should destroy repository" do
    assert_difference('Repository.count', -1) do
      delete :destroy, params: { id: @repository }
    end

    assert_response 204
  end
end
