class SubtasksController < ApplicationController
  before_action :set_task
  before_action :set_subtask, only: [:show, :edit, :update, :destroy]

  # GET tasks/1/subtasks
  def index
    @subtasks = @task.subtasks
  end

  # GET tasks/1/subtasks/1
  def show
  end

  # GET tasks/1/subtasks/new
  def new
    @subtask = @task.subtasks.build
  end

  # GET tasks/1/subtasks/1/edit
  def edit
  end

  # POST tasks/1/subtasks
  def create
    @subtask = @task.subtasks.build(subtask_params)

    if @subtask.save
      redirect_to([@subtask.task, @subtask], notice: 'Subtask was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT tasks/1/subtasks/1
  def update
    if @subtask.update_attributes(subtask_params)
      redirect_to([@subtask.task, @subtask], notice: 'Subtask was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE tasks/1/subtasks/1
  def destroy
    @subtask.destroy

    redirect_to task_subtasks_url(@task)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:task_id])
    end

    def set_subtask
      @subtask = @task.subtasks.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subtask_params
      params.require(:subtask).permit(:title, :status, :task_id)
    end
end
