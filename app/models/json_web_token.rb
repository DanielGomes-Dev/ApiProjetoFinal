class JsonWebToken
    Secret = Rails.application.secrets.secret_key_base

    def self.encode(payload)
        return JWT.encode(payload, Secret)
    end

    def self.decode (token)
        begin
            return JWT.decode(token,Secret)
        rescue => exception
            puts "Não conseguiu pegar Decodificar o token"
            return nil
        end
    end
    
end