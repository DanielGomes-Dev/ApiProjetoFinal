class JsonWebToken
    # Secret = Rails.application.secrets.secret_key_base
    secret = "Rails.application.secrets.secret_key_base"

    def self.encode(payload)
        begin
            return JWT.encode(payload, secret)
        rescue => exception
            return nil
        end
    end

    def self.decode (token)
        begin
            return JWT.decode(token, secret)
        rescue => exception
            puts "Não conseguiu pegar Decodificar o token"
            return nil
        end
    end
    
end