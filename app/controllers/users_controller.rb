class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end


  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end