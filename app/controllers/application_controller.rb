class ApplicationController < ActionController::API
    def current_user
        token = request.headers["Authorization"];
        token = token.split(" ").last if token.present?
        return nil unless token.present?
        
        decoded = JsonWebToken.decode(token)
        # return nil unless decoded.present?
        return nil  unless decoded.present?
        
        user_id = decoded[0]["user_id"]
        user = User.find(user_id)
        
        return user
    end

     ## registro do endereço do usuario
     def address_register (address = {} ,id)

        address[:user_id] = id
        @userAddress = Address.new(address)
  
        if @userAddress.save
          return true
        else
          render json: {err: 'Erro ao Cadastrar o Endereco'}
        end
    end

    def email_generate(user)
      return "#{user[:name].split(" ").first}#{user[:name].split(" ").last}#{User.all.length}@id.uff.br"

    end
    
end
