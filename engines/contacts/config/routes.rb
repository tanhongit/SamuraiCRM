Samurai::Core::Engine.routes.draw do
    scope module: 'contacts' do
        resources :contacts
    end
end