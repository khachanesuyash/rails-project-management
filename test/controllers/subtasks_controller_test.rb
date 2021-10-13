require 'test_helper'

class SubtasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
    @subtask = subtasks(:one)
  end

  test "should get index" do
    get :index, params: { task_id: @task }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { task_id: @task }
    assert_response :success
  end

  test "should create subtask" do
    assert_difference('Subtask.count') do
      post :create, params: { task_id: @task, subtask: @subtask.attributes }
    end

    assert_redirected_to task_subtask_path(@task, Subtask.last)
  end

  test "should show subtask" do
    get :show, params: { task_id: @task, id: @subtask }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { task_id: @task, id: @subtask }
    assert_response :success
  end

  test "should update subtask" do
    put :update, params: { task_id: @task, id: @subtask, subtask: @subtask.attributes }
    assert_redirected_to task_subtask_path(@task, Subtask.last)
  end

  test "should destroy subtask" do
    assert_difference('Subtask.count', -1) do
      delete :destroy, params: { task_id: @task, id: @subtask }
    end

    assert_redirected_to task_subtasks_path(@task)
  end
end
