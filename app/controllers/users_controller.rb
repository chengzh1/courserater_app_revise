class UsersController < ApplicationController
before_filter :signed_in_user,
    only: [:index, :edit, :update, :destroy, :following, :followers]
  def new
    @user = User.new
  end
    
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

    def create
        @user = User.new(params[:user])
        if @user.save
            sign_in @user  #定义在helper/sessions_helper
            flash[:success] = "Welcome to CMU Course Rater!"
            redirect_to @user
            else
            render 'new'
        end
    end
    
    def following
        @title = "Following"
        @user = User.find(params[:id])
        @users = @user.followed_users.paginate(page: params[:page])
        render 'show_follow'
    end
    
    def followers
        @title = "Followers"
        @user = User.find(params[:id])
        @users = @user.followers.paginate(page: params[:page])
        render 'show_follow'
    end
    
end
