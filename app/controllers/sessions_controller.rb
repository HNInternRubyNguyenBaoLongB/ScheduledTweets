class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in successfully"
        else
            flash[:alert] = "Invalid email or password"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
<<<<<<< HEAD
<<<<<<< HEAD

=======
        
>>>>>>> password controller
=======
        
>>>>>>> 35c2c4a7393184007cb68766f9f6c30a9a159c2f
    end
end