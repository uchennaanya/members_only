class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirm)
    end

    def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirm, :current_password)
    end

end