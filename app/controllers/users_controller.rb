class UsersController < ApplicationController

	def index
  		@users = User.all
  	end

  def new
	 @user = User.new
  end

  def create
		@user = User.new(user_params)
     session[:user_id] = @user.id
      if @user.save
        flash[:notice] = "You're Signed in!"
        @user=current_user
        redirect_to "/users/show"
      else 
        flash[:notice] = "Invalid Information!"
        redirect_to "/users/new"
      end
  end

  def edit
	  @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to :back
  end 

  def signinform
    # @user = User.where(username: params[:username]).first
  end

  def signin
      @user = User.where(username: params[:username]).first
       puts @user.inspect  
    if @user && @user.password == params[:password]
      session[:user_id] = @user.id
      flash[:notice] = "You're Signed in!"
      redirect_to "/users/show"
    else
      flash[:error] = "Invalid Information!"
      redirect_to "/users/signinform"
    end
  end

  def signout
    session[:user_id] = nil
    # flash[:notice] = "You're Signed Out!"
    redirect_to "/"
  end

  def show
    @user=current_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :username,:password)
  end
end