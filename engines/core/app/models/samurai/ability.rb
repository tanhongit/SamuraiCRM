module Samurai
  class Ability
    include CanCan::Ability

    def initialize(user)
      if user.admin?
        can :manage, :all
      else
        can :read, :dashboard
      end
    end
  end
end
