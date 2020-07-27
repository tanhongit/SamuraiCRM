Samurai::Core::Engine.routes.draw do
end
Rails.application.routes.draw do
    mount Samurai::Core::Engine => "/", as: 'samurai'
end