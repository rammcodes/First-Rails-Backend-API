class UsersController < ApplicationController

    def index
    end

    def create
        user = User.find_by(email: params[:email])
        unless user
            newUser = User.new(name: params[:email], email: params[:email], access_token: params[:email])
            newUser.save
        end
        # Implement JWT
        render json: newUser
    end

end
