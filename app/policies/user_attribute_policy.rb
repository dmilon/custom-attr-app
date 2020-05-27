class UserAttributePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      admin? ? scope.all : scope.where(user: user)
    end
  end

  def show?
    admin?
  end

  def index?
    admin?
  end

  def new?
    create?
  end

  def create?
    admin?
  end

  def edit?
    update?
  end

  def update?
    admin?
  end

  def destroy?
    admin?
  end
end
