class UsersController < ApplicationController
    
    def signin
        user = User.find_by(username: params[:username])
        if user and user.authenticate(params[:password])
            render json: {token: issue_token({id: user.id})} 
        else 
            render json: { error: "User & Password Combination does not match"}, status: 400
        end 
    end 

    def validate 
        user = get_current_user
        if user 
            render json: {username: user.username}
        else 
            render json: {error: 'Invalid id.'}, status: 404
        end 
    end 

    def inventory 
        user = get_current_user
        if user 
            render json: user.projects
        else 
            render json: {error: 'Invalid id.'}, status: 404
        end
    end 

end
