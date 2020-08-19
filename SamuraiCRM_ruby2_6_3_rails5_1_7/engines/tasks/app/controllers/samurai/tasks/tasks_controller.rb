require_dependency "samurai/tasks/application_controller"

module Samurai::Tasks
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    # GET /tasks
    def index
      @tasks = Task.all
      #@tasks = current_user.tasks
    end

    def show
    end

    def new
      @task = Task.new
    end
    def edit
      authorize! :manage, nil
    end

    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to @task, notice: 'Task was successfully created.'
      else
        render :new
      end
    end

    def update
      if @task.update(task_params)
        redirect_to @task, notice: 'Task was successfully updated.'
      else
        render :edit
      end
    end

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
