require 'test_helper'

class CodeinterviewsControllerTest < ActionController::TestCase
  setup do
    @codeinterview = codeinterviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:codeinterviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create codeinterview" do
    assert_difference('Codeinterview.count') do
      post :create, codeinterview: { company: @codeinterview.company, content: @codeinterview.content, created_at: @codeinterview.created_at }
    end

    assert_redirected_to codeinterview_path(assigns(:codeinterview))
  end

  test "should show codeinterview" do
    get :show, id: @codeinterview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @codeinterview
    assert_response :success
  end

  test "should update codeinterview" do
    put :update, id: @codeinterview, codeinterview: { company: @codeinterview.company, content: @codeinterview.content, created_at: @codeinterview.created_at }
    assert_redirected_to codeinterview_path(assigns(:codeinterview))
  end

  test "should destroy codeinterview" do
    assert_difference('Codeinterview.count', -1) do
      delete :destroy, id: @codeinterview
    end

    assert_redirected_to codeinterviews_path
  end
end
