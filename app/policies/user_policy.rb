class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def dashboard?
    # ne fonctionne pas
    # user == record.user
    true
  end
end
