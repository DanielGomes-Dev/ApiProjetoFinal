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

    def register_student
      user = user_params
      user[:role] = 0

      @user = User.new(user.except(:address))
      
      if @user.save && address_register(@user)  && student_registrate(@user);
              render json: @user, status: :created, location: @user

      else
              @user.delete()
              render json: @user.errors, status: :unprocessable_entity
      end
          
    end

    private
     # Only allow a list of trusted parameters through.

    ## Cadastro de Usuarios em suas determinadas funções
    def student_registrate (user)

      # user.registration = "#{School_year.last.year}#{Course.find(user.course)}#{rand(01...99)}"
      student = Student.new({user_id:user.id, course_id:user.course, registration: "123456678910" });

      if student.save
        return true          
      else
        return false
      end
      
    end

    ## registro do endereço do usuario
    def address_register (user)

      userAddress = user_params[:address]
      userAddress[:user_id] = user.id

      @userAddress = Address.new(userAddress)

      if @userAddress.save
        return true
      else
        return false
      end



    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :cpf, :rg, :nationality, :birthdate, address: {})
    end
end
