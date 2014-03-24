class ReleasePolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
  end

  def show?
    @user
  end

  def new?
     @user.admin?
  end

  def create?
     @user.admin?
  end

  def update?
    @user.admin?
  end

  def destroy?
    @user.admin?
  end

end
