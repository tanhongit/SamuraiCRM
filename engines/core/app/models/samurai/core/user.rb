module Samurai::Core
  class User < ActiveRecord::Base
      # Include default devise modules. Others available are:
      # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
      devise  :database_authenticatable, :registerable,
              :recoverable, :rememberable, :trackable, :validatable

      scope :ordered, -> { order('created_at desc') } # NEW SCOPE
  end
end
