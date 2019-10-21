class UsersController < ApplicationController

    def index
    end

    def create
        user = User.find_by(email: params[:email])
        unless user
            newUser = User.new(name: params[:name], email: params[:email], access_token: params[:access_token])
            newUser.save
        end
        # Implement JWT
        render json: {'name' => newUser.name, 'email' => newUser.email}
    end

end
