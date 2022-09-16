class UsersController < ApplicationController
    new_user = User.create(username: params[:username], email: params[:email], first_name: params[first_name], last_name: params[last_name])
    render json: { user: new_user}
end
