class BlogsController < ApplicationController

  before_action :authenticate_user!, only: [:profile, :update_profile, :delete_profile, :create]

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

  def create

    post = Post.new
    post.photo = params[:photo]
    post.user_id = current_user.id
    post.content = params[:content]
    post.save

    redirect_to :action => "feeds"

  end

  def delete

    post = Post.where(:user_id => current_user.id, :id => params[:id]).first
    post.delete
    
    redirect_to :action => "feeds"

  end


  def comment

    comment = Comment.new
    comment.user_id = current_user.id
    comment.content = params[:content]
    comment.post_id = params[:id]
    comment.save
    
    redirect_to :action => "feeds"

  end

  def delete_comment

    comment = Comment.where(:user_id => current_user.id, :id => params[:id]).first
    comment.delete
    
    redirect_to :action => "feeds"

  end

  private

  def user_params
      params.require(:user).permit(:profile)
  end

end
