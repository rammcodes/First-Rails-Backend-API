class UsersController < ApplicationController

    def index
    end

    def create
        user = User.find_by(email: params[:email])
        unless user
            user = User.new(name: params[:name], email: params[:email], access_token: params[:access_token])
            user.save
        end

        # Implement JWT
        render json: {'name' => user.name, 'email' => user.email}
    end

end
