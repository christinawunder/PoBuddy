class AdvicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    owner_or_admin?
  end

  def new
  end

  def create
  end

  private

  def owner_or_admin?
    record.user == user || user.admin
  end
end
