class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.new(params[:user].permit(:name, :email))
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 422 #:unprocessable_entity
    end
  end


  def destroy
    user = User.find(params[:id])
    if user
      user.destroy
      render json: user
    else
      render json: user.errors.full_messages, status: 404
    end
  end

  def show
    user = User.find(params[:id])
    if user
      render json: user
    else
      render json: user.errors.full_messages, status: 404
    end
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
