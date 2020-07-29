Rails.application.routes.draw do
  mount Samurai::Core::Engine => "/", as: 'samurai'
end
