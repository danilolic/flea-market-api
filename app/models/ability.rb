# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Listing, user_id: user.id
    can :manage, Subject, user_id: user.id
    can :manage, Event, calendar: { user_id: user.id }
  end
end
