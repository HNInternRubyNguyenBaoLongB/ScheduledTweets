class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
<<<<<<< HEAD
<<<<<<< HEAD

=======
        
>>>>>>> password controller
=======
        
>>>>>>> 35c2c4a7393184007cb68766f9f6c30a9a159c2f
    end
end