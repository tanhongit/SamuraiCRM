module Samurai
  class ApplicationController < ActionController::Base
    def index
    end
    protect_from_forgery with: :exception
  end
end
