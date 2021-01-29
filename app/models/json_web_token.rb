class JsonWebToken
    # Secret = Rails.application.secrets.secret_key_base
    Secret = "UmaSenhaMuito@@@@3333Secreta8468468484846"

    def self.encode(payload)
        begin
            return JWT.encode(payload, Secret)
        rescue => exception
            return nil
        end
    end

    def self.decode(token)
        begin
            return JWT.decode(token, Secret)
        rescue => exception
            return nil
        end
    end
    
end