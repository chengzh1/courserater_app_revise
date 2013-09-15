class UsersController < ApplicationController
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
end
