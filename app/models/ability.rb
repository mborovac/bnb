class Ability
  include CanCan::Ability

  def initialize(current_user)
    send(UserRole[:ANONYMOUS].value) if current_user.blank?
    @user = current_user
    send(current_user.role.underscore) unless current_user.role.blank?
  end

  def administrator
    can :manage, :all
  end

  def user
    can :read, :all
    can :create, :all
  end

  def blogger
    can :read, :all
    can :create, Blog
    can :update, Blog, creator_id: @user.id
  end

  def anonymous
    can :read, :all
  end
end
