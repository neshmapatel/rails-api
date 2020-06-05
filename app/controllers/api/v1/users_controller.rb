class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, status: 200
    end
    
    def show
        @user = User.find
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: 200 
            # render json: { message: 'User created successfully!'}
        else
            render json: { error: 'Unable to create User!'}, status: 400
        end
    end

    def update
        @user =User.find(params[:id])
        if @user
            @user.update
             render json: { message: 'updates the user'}, status: 200
        else
            render json: { error: 'Unable to update User!'}, status: 400
        end
    end

    def destroy
        @user =User.find(params[:id])
        if @user
            @user.destroy
            render json: { message: 'User destroyed successfully!'}, status: 200
        else
            render json: { error: 'Unable to destroy User!'}, status: 400
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password_digest)
    end
end
