require_dependency "samurai/tasks/application_controller"

module Samurai::Tasks
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    # GET /tasks
    def index
      @tasks = Task.all
      #@tasks = current_user.tasks
    end

    # GET /tasks/1
    def show
    end

    # GET /tasks/new
    def new
      @task = Task.new
    end

    # GET /tasks/1/edit
    def edit
      authorize! :manage, nil
    end

    # POST /tasks
    def create
      @task = Task.new(task_params)
     # @task.user = current_user
      if @task.save
        redirect_to @task, notice: 'Task was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /tasks/1
    def update
      if @task.update(task_params)
        redirect_to @task, notice: 'Task was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /tasks/1
    def destroy
      authorize! :manage, nil
      @task.destroy
      redirect_to tasks_url, notice: 'Task was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_task
        @task = Task.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def task_params
        params.require(:task).permit(:title, :content, :user_id, :contact_id)
      end
  end
end
