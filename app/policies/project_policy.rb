class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user.try(:admin?) || record.roles.exists?(user_id: user)
  end
end
