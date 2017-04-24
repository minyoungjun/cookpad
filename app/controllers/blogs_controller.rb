class BlogsController < ApplicationController

  def profile
    @user = current_user
  end

  def update_profile

    user = current_user
    user.update(user_params)

    redirect_to :action => "profile"

  end

  def delete_profile

    user = current_user
    user.profile = nil
    user.save

    redirect_to :action => "profile"

  end

  private

  def user_params
      params.require(:user).permit(:profile)
  end

end
