module Samurai::Tasks
  module Admin
    class TasksController < Samurai::Admin::AdminController
      def index
        authorize! :manage, nil
        @tasks = Task.all
      end
    end
  end
end
