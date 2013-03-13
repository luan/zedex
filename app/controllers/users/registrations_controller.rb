class Users::RegistrationsController < Devise::RegistrationsController
  private

  def resource_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
