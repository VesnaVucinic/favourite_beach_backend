class ApplicationController < ActionController::API
  
    # STEP 1: Encode/Decode Tokens
  # WHY?: `JWT.encode` takes up to three arguments: a payload to encode, an application secret of the developer's choice, and an optional third that can be used to specify the hashing algorithm used. Typically, we don't need to show the third. This method returns a JWT as a string.
    def encode_token(payload)
        # should store secret in env variable
        JWT.encode(payload, 'my_s3cr3t')
    end 
    
    def auth_header
        # { Authorization: 'Bearer <token>' }
        request.headers['Authorization']
    end
    
      # WHY?: `JWT.decode` takes three arguments as well: a JWT as a string, an application secret, and––optionally––a hashing algorithm.
    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            # header: { 'Authorization': 'Bearer <token>' }
            # The Begin/Rescue syntax allows us to rescue out of an exception in Ruby.
            begin
                JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

end
