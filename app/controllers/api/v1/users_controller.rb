class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy, :update]

  #CRUD Methods
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    # puts @user
  end

  def show
    render json:  @user
  end

  def update
    @user.update(user_params)
  end

  def destroy
    @user.destroy
  end



  #Private methods
  private

  def user_params
    params.permit(:username, :password, :age, :location)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
