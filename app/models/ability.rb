class Ability
  include CanCan::Ability

  def initialize(user)
   # user ||= User.new #create Guest if user is nil
    if user.nil?
      can :read, :all
    elsif (user.is_admin == true)
      can :manage, :all 
    elsif not(user.email.empty?)
      can :edit, :create, :all
    else
      can :read, :all
    end
  end
end
