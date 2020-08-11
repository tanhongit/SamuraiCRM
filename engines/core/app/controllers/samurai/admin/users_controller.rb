module Samurai
    module Admin
        class UsersController < AdminController
            def index
                @users = Samurai::Core::User.ordered
            end
        end
    end
end