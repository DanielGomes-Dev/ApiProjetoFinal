class AuthenticationController < ApplicationController
    def login
        user = User.find_by!(cpf:params[:user][:cpf])
        user = user&.authenticate(params[:user][:password])
        if user
          token = JsonWebToken.encode(user_id: user.id);
          token = {err:"Falha ao gerar o Token"} unless token.present?
          render json: {token:token}
          return
        else
          render json:{err: "Not Authenticate"}, status: 403
          return
        end
    end

    

    private
     # Only allow a list of trusted parameters through.

    ## Cadastro de Usuarios em suas determinadas funções
    

   



    

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :cpf, :rg, :nationality, :birthdate, address: {})
    end
end
