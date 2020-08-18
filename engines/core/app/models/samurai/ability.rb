module Samurai
  class Ability
    include CanCan::Ability 

    class_attribute :abilities
    self.abilities = Set.new

    def self.register_ability(ability)
      self.abilities.add(ability)
    end

    def self.remove_ability(ability)
      self.abilities.delete(ability)
    end
    
    def initialize(user)
      Rails.logger.info self.abilities.inspect
        if user.admin?
          can :manage, :all
        else
          can :read, :dashboard
        end 
        # Include any abilities registered by extensions, etc.
        # Rails.logger.info self.abilities.inspect
        Ability.abilities.each do |klass|
          ability = klass.send(:new, user)
          @rules = rules + ability.send(:rules)
        end
    end 
  end 
end
