class ApplicationController < ActionController::API
    def current_user
        token = request.headers["Authorization"];
        token = token.split(" ").last if token.present?
        return nil unless token.present?
        
        decoded = JsonWebToken.decode(token)
        return nil unless decoded.present?
        user_id = decoded[0]["user_id"]
        user = User.find(user_id)

        return user
    end

     ## registro do endereço do usuario
     def address_register (user)

        userAddress = user_params[:address] || {}
        userAddress[:user_id] = user.id
  
        @userAddress = Address.new(userAddress)
  
        if @userAddress.save
          return true
        else
          return false
        end
    end
    
end
