class JsonWebToken
    # Secret = Rails.application.secrets.secret_key_base
    secret = "UmaSenhaMuito@@@@3333Secreta8468468484846"

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