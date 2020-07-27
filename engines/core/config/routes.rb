Samurai::Core::Engine.routes.draw do
    root to: "dashboard#index"
end
Rails.application.routes.draw do
    mount Samurai::Core::Engine => "/", as: 'samurai'
end