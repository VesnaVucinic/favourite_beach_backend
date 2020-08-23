class ApplicationController < ActionController::API
  
    # STEP 1: Encode/Decode Tokens
  # WHY?: `JWT.encode` takes up to three arguments: a payload to encode, an application secret of the developer's choice, and an optional third that can be used to specify the hashing algorithm used. Typically, we don't need to show the third. This method returns a JWT as a string.
    def encode_token(payload)
        # should store secret in env variable
        JWT.encode(payload, 'my_s3cr3t')
    end 
    
    

end
