class RegistrationsController < Devise::RegistrationsController
  before_filter :perm_authenticate

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