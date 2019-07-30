class AuthController < ApplicationController
  def login
   # params: {username: '', email: '', password: ''}
   #find the user by their username
   user = User.find_by(username: params["username"])
   #authenticate the user (need BYCRYPT)
   is_authenticated = user.authenticate(params["password"])


   puts "hey! #{is_authenticated }"

   if is_authenticated
     #token needs payload, secret, and code
     #payload = {user_id: user.id}
     # token= JWT.encode {user_id: user.id}, 'beef', 'HS256'


     render json: { token: encode_token(user) }
   else
     render json: { error: "Wrong username or password"}
   #'log in the user' - whatever that means
   end
  end
end
