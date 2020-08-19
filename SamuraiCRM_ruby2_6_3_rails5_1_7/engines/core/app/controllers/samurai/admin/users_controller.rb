module Samurai
  module Admin
    class UsersController < AdminController
      def index
        authorize! :manage, nil
        @users = Samurai::User.ordered
      end
    end
  end
end