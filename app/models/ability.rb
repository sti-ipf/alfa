class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.coordinator?
      can :manage, :all
    elsif user.educator?
      can :read, :all
      can :manage, Student do |student|
        user.cores.include?(student.core) || student.core.blank?
      end
      can :manage, Room do |room|
        user.cores.include?(room.core) || room.core.blank?
      end
      can :manage, Educator do |educator|
        user.cores.include?(educator.core) || educator.core.blank?
      end

      can :create, :students
      can :create, :rooms
      can :create, :educators

    elsif user.default?
      can :read, :all
    end
  end
end
