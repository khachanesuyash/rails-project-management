class Task::CommentsController < ApplicationController
  before_action :set_task_comment, only: %i[ show edit update destroy ]

  # GET /task/comments or /task/comments.json
  def index
    @task_comments = Task::Comment.all
  end

  # GET /task/comments/1 or /task/comments/1.json
  def show
  end

  # GET /task/comments/new
  def new
    @task_comment = Task::Comment.new
  end

  # GET /task/comments/1/edit
  def edit
  end

  # POST /task/comments or /task/comments.json
  def create
    @task_comment = Task::Comment.new(task_comment_params)

    respond_to do |format|
      if @task_comment.save
        format.html { redirect_to @task_comment, notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @task_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task/comments/1 or /task/comments/1.json
  def update
    respond_to do |format|
      if @task_comment.update(task_comment_params)
        format.html { redirect_to @task_comment, notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @task_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task/comments/1 or /task/comments/1.json
  def destroy
    @task_comment.destroy
    respond_to do |format|
      format.html { redirect_to task_comments_url, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_comment
      @task_comment = Task::Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_comment_params
      params.require(:task_comment).permit(:body, :task_id, :user_id)
    end
end
