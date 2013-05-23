class RegistrationsController < Devise::RegistrationsController
  before_filter :require_admin!

  def new
    super
  end

  def create
    super
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end

  private

    

end