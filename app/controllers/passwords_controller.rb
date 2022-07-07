class PasswordsController < ApplicationController
    before_action :require_user_logged_in!
    def edit
    end

    def update
        if Current.user.update(password_params)
            redirect_to root_path, notice: "Password update"
        else
            render :edit
        end
    end

    private 
    def password_params
        params.require(:user).permit(:password, :password_confirmation)
<<<<<<< HEAD
<<<<<<< HEAD

=======
        
>>>>>>> password controller
=======
        
>>>>>>> 35c2c4a7393184007cb68766f9f6c30a9a159c2f
    end
end