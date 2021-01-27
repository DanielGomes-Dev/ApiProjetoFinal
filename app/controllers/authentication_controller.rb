class AuthenticationController < ApplicationController
    def login
        user = User.find_by!(email:params[:user][:email])
        user = user&.authenticate(params[:user][:password]);
        if user
          token = JsonWebToken.encode(user_id: user.id);
          render json: {token:token}
          return
        else
          render json:{err: "Not Authenticate"}, status: 403
          return
        end
    end

    def register

            @user = User.new(user_params.except(:address))
            if @user.save
              
              userAddress = user_params[:address]
              userAddress[:user_id] = @user.id

              @userAddress = Address.new(userAddress)
              if @userAddress.save
                render json: @user, status: :created, location: @user
              else
              render json: @userAddress.errors, status: :unprocessable_entity
              end
            else
              render json: @user.errors, status: :unprocessable_entity
            end
          
    end
    private
     # Only allow a list of trusted parameters through.
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :cpf, :rg, :role, :nationality, :birthdate, address: {})
    end
end
