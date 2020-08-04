Samurai::Core::Engine.routes.draw do
    devise_for :users, class_name: "Samurai::Core::User", module: :devise
    namespace :admin do
        get '/' => 'admin#index'
    end
    root to: "dashboard#index"
end