class RegistrationsController < Devise::RegistrationsController

   private
   def sign_up_params
      params.require(:user).permit(:username, :password, :email, :password_confirmation, :name)
   end
   def account_update_params
      params.require(:user).permit(:username, :password, :email, :password_confirmation, :name, :current_password)
   end