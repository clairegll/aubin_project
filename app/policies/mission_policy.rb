class MissionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def show?
    return true
  end
  def new?
    user.admin
  end

  def create?
    user.admin
  end 

  def destroy?
    if user
      user.admin
    end
  end

  def update?
    if user
      user.admin
    end
  end

  def edit?
    if user
      user.admin
    end
  end

end
