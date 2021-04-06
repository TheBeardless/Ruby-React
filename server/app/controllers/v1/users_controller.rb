class V1::UsersController < ApplicationController
  def index
    @users = User.all

    render json: @users, status: :ok
  end

  def create
    @user = User.new(user_params)

    @user.save
    render json: @user, status: :created
    
  end

  def delete
    @user = User.where(id: params[:id]).first

    if @user.delete
      head(:ok) # head returns just the content in the header. 
    else
      head(:unprocessable_entity)
      #"422 Unprocessable Entity (WebDAV; RFC 4918) The request was well-formed but was unable to be followed due to semantic errors."
    end
  end





  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end
