module Samurai::Tasks
  class Task < ApplicationRecord
    belongs_to :user

    if Samurai::Core.available?(:contacts)
      belongs_to :contact, class_name: 'Samurai::Contacts::Contact'
    end

    scope :ordered, -> { order('created_at desc') }
  end
end
# fix : Uninitialized constant Admin (NameError) (`const_get': uninitialized constant Controllers::AdminControllerDecorator (NameError))
# https://stackoverflow.com/questions/55881918/uninitialized-constant-admin-nameerror