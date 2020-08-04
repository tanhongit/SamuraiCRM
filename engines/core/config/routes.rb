Samurai::Core::Engine.routes.draw do
    devise_for :users, class_name: "Samurai::Core::User", module: :devise
    root to: "dashboard#index"
end