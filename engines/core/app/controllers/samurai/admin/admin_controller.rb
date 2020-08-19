# SamuraiCRM/engines/core/app/controllers/samurai/admin/admin_controller.rb
module Samurai
  module Admin
    class AdminController < ApplicationController
      #authorize_resource class: false
      # before_action class: false
      def index
        authorize! :manage, nil
      end
    end
  end
end