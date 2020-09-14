class Api::V1::UsersController < ApplicationController
    # GET /users
    def index
        @users = User.all 
        render json: @users
    end

    # GET /user/:id
    def show 
        @user = User.find(params[:id])
        render json: @user
    end
    #POST /users
    def create 
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render error: { error 'Unable to create User :('}, status: 400
        end
    end
    #PATCH /users/:id
    def update
        @user = User.find(params[:id])
        if @user 
            @user.update(user_params)
            render json: { message: 'User successfully updated!'}, status: 200
        else 
            render json: { message: 'Unable to update User :('}, status: 400
        end
    end
    #DELETE /users/:id






end
