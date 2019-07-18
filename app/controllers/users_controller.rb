class UsersController < ApplicationController
  def create
      # params: {username: '', email: '', password: ''}
    user = User.create(user_params)

    is_valid = user.valid?

    if is_valid
      # token= JWT.encode {user_id: user.id}, 'beef', 'HS256'
      # no need line above since encode_token is in appl controller
      render json: { token: encode_token(user) }
    else
      render json: {errors: user.error.full_messages}
    end
  end

  def profile
    # byebug
    
    #how do we get user id?
    render json: curr_user
  end

  private

  def user_params
    params.permit(:username, :email, :password)
  end

end
