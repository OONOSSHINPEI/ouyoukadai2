class RelationshipsController < ApplicationController
    
  def create
    following = current_user.follow(@user)
    if following.save
      flash[:success] 
      redirect_to @user
    else
      flash.now[:alert] 
      redirect_to @user
    end
  end

  def destroy
    following = current_user.unfollow(@user)
    if following.destroy
      flash[:success] 
      redirect_to @user
    else
      flash.now[:alert]
      redirect_to @user
    end
  end

  private
  
  def user_params
    @user = User.find(params[:relationship][:follow_id])
  end


    
end
