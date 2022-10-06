class UsersController < ApplicationController

  def show
    uer = User.find_by(id: session[:user_id])
    if User
      rendre json: user
    else
      render json: {error: "Not authorized"}, status: :unauthorized
    end
  end

end
